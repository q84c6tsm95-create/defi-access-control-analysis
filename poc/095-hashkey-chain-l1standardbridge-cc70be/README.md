# HashKey Chain / L1StandardBridge

## Summary

- Protocol: `HashKey Chain`
- Contract name: `L1StandardBridge`
- Contract: [0x2171e6d3b7964fa9654ce41da8a8ffaff2cc70be](https://etherscan.io/address/0x2171e6d3b7964fa9654ce41da8a8ffaff2cc70be)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x3228f00fbfd0e1f4c282601c489664b10932c40f](https://etherscan.io/address/0x3228f00fbfd0e1f4c282601c489664b10932c40f)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$1.8M`
- Execution class: `Multi-tx`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT validiums/others follow-up PoC verified on local fork.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x3228f00fbfd0e1f4c282601c489664b10932c40f`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
