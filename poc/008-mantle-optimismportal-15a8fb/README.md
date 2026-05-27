# Mantle / OptimismPortal

## Summary

- Protocol: `Mantle`
- Contract name: `OptimismPortal`
- Contract: [0xc54cb22944f2be476e02decfcd7e3e7d3e15a8fb](https://etherscan.io/address/0xc54cb22944f2be476e02decfcd7e3e7d3e15a8fb)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x4e59e778a0fb77fbb305637435c62faed9aed40f](https://etherscan.io/address/0x4e59e778a0fb77fbb305637435c62faed9aed40f)
- Control class: `6/14`
- Nested Safe: `❌`
- Funds moved in proof: `$295.7M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainEth -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x4e59e778a0fb77fbb305637435c62faed9aed40f`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
