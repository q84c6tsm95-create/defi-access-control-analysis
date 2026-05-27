# Base / OptimismPortal2

## Summary

- Protocol: `Base`
- Contract name: `OptimismPortal2`
- Contract: [0x49048044d57e1c92a77f79988d21fa8faf74e97e](https://etherscan.io/address/0x49048044d57e1c92a77f79988d21fa8faf74e97e)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x7bb41c3008b3f03fe483b28b8db90e19cf07595c](https://etherscan.io/address/0x7bb41c3008b3f03fe483b28b8db90e19cf07595c)
- Control class: `2/2`
- Nested Safe: `✅ (3/6, 8/11)`
- Funds moved in proof: `$1.77B`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainEth -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x7bb41c3008b3f03fe483b28b8db90e19cf07595c`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
