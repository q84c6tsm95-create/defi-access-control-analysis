# Manta Pacific / OptimismPortal

## Summary

- Protocol: `Manta Pacific`
- Contract name: `OptimismPortal`
- Contract: [0x9168765ee952de7c6f8fc6fad5ec209b960b7622](https://etherscan.io/address/0x9168765ee952de7c6f8fc6fad5ec209b960b7622)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x3c46c05c2eba8edd0b0f0c8b1d2fbf9fc53ea01e](https://etherscan.io/address/0x3c46c05c2eba8edd0b0f0c8b1d2fbf9fc53ea01e)
- Control class: `5/7`
- Nested Safe: `❌`
- Funds moved in proof: `$19.3M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainEth -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x3c46c05c2eba8edd0b0f0c8b1d2fbf9fc53ea01e`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
