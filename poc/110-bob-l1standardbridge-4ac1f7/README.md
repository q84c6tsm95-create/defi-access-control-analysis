# Bob / L1StandardBridge

## Summary

- Protocol: `Bob`
- Contract name: `L1StandardBridge`
- Contract: [0x3f6ce1b36e5120bbc59d0cfe8a5ac8b6464ac1f7](https://etherscan.io/address/0x3f6ce1b36e5120bbc59d0cfe8a5ac8b6464ac1f7)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0xc91482a96e9c2a104d9298d1980eccf8c4dc764e](https://etherscan.io/address/0xc91482a96e9c2a104d9298d1980eccf8c4dc764e)
- Control class: `4/6`
- Nested Safe: `❌`
- Funds moved in proof: `$1.4M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0xc91482a96e9c2a104d9298d1980eccf8c4dc764e`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
