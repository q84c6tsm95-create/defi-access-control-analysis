# Redstone / OptimismPortal

## Summary

- Protocol: `Redstone`
- Contract name: `OptimismPortal`
- Contract: [0xc7bcb0e8839a28a1cfadd1cf716de9016cda51ae](https://etherscan.io/address/0xc7bcb0e8839a28a1cfadd1cf716de9016cda51ae)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x70fdbcb066ed3621647ddf61a1f40aac6058bc89](https://etherscan.io/address/0x70fdbcb066ed3621647ddf61a1f40aac6058bc89)
- Control class: `2/3`
- Nested Safe: `❌`
- Funds moved in proof: `$571.7K`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainEth -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x70fdbcb066ed3621647ddf61a1f40aac6058bc89`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
