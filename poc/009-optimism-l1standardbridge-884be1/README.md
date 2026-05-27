# Optimism / L1StandardBridge

## Summary

- Protocol: `Optimism`
- Contract name: `L1StandardBridge`
- Contract: [0x99c9fc46f92e8a1c0dec1b1747d010903e884be1](https://etherscan.io/address/0x99c9fc46f92e8a1c0dec1b1747d010903e884be1)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x5a0aae59d09fccbddb6c6cceb07b7279367c3d2a](https://etherscan.io/address/0x5a0aae59d09fccbddb6c6cceb07b7279367c3d2a)
- Control class: `2/2`
- Nested Safe: `✅ (5/7, 10/13)`
- Funds moved in proof: `$284.8M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x5a0aae59d09fccbddb6c6cceb07b7279367c3d2a`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
