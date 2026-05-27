# Nova / Bridge

## Summary

- Protocol: `Nova`
- Contract name: `Bridge`
- Contract: [0xc1ebd02f738644983b6c4b2d440b8e77dde276bd](https://etherscan.io/address/0xc1ebd02f738644983b6c4b2d440b8e77dde276bd)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0xf06e95ef589d9c38af242a8aaee8375f14023f85](https://etherscan.io/address/0xf06e95ef589d9c38af242a8aaee8375f14023f85)
- Control class: `9/12`
- Nested Safe: `❌`
- Funds moved in proof: `$17.8M`
- Execution class: `Multi-tx`

## Authority Path

`UpgradeExecutor.executeCall -> ProxyAdmin.upgrade -> drainEth -> drainErc20`

## Local-Fork Evidence

L2BEAT validiums/others follow-up PoC verified on local fork.

### Executed Steps

- `UpgradeExecutor.executeCall`; sender `0xf06e95ef589d9c38af242a8aaee8375f14023f85`
- `ProxyAdmin.upgrade`; sender `0x3fffbadaf827559da092217e474760e2b2c3cedd`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
