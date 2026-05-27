# YieldNest / ynETHRedemptionAssetsVault

Claim 123 of 160 in the generated publication set.

## Summary

- Protocol: `YieldNest`
- Contract name: `ynETHRedemptionAssetsVault`
- Contract: [0x5d6e53c42e3b37f82f693937bc508940769c5caf](https://etherscan.io/address/0x5d6e53c42e3b37f82f693937bc508940769c5caf)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0xfcad670592a3b24869c0b51a6c6fded4f95d6975](https://etherscan.io/address/0xfcad670592a3b24869c0b51a6c6fded4f95d6975)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$1.0M`
- Execution class: `Atomic`

## Authority Path

`PA.upgradeAndCall -> drainEth`

## Local-Fork Evidence

ynETH Redemption vault TUP (scanner originally classified as UUPS). Recorded both steps reverted. Fresh 2026-05-19 bundle via OZ v5 ProxyAdmin.upgradeAndCall by Safe 3/N 0xfcad6705…75 confirms atomic drain of 636.8 ETH (~$1.36M). Current ETH balance fluctuates with vault flow; previously recorded $1.91M was a snapshot at a different time.

### Executed Steps

- `PA.upgradeAndCall`; sender `0xfcad670592a3b24869c0b51a6c6fded4f95d6975`
- `_drainEth`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
