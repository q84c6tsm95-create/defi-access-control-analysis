# Zircuit / L1StandardBridge

## Summary

- Protocol: `Zircuit`
- Contract name: `L1StandardBridge`
- Contract: [0x386b76d9ca5f5fb150b6bfb35cf5379b22b26dd8](https://etherscan.io/address/0x386b76d9ca5f5fb150b6bfb35cf5379b22b26dd8)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0xc463eac02572cc964d43d2414023e2c6b62baf38](https://etherscan.io/address/0xc463eac02572cc964d43d2414023e2c6b62baf38)
- Control class: `4/6`
- Nested Safe: `❌`
- Funds moved in proof: `$915.5K`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0xc463eac02572cc964d43d2414023e2c6b62baf38`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
