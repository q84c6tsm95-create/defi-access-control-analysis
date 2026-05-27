# ERC1967Proxy / ERC1967Proxy

## Summary

- Protocol: `ERC1967Proxy`
- Contract name: `ERC1967Proxy`
- Contract: [0xdcb612005417dc906ff72c87df732e5a90d49e11](https://etherscan.io/address/0xdcb612005417dc906ff72c87df732e5a90d49e11)
- Role: `OWNER`
- Authority holder: [0x2aca71020de61bb532008049e1bd41e451ae8adc](https://etherscan.io/address/0x2aca71020de61bb532008049e1bd41e451ae8adc)
- Control class: `4/7`
- Nested Safe: `❌`
- Funds moved in proof: `$1.2M`
- Execution class: `Atomic`

## Authority Path

`endpoint.setConfig Safe-as-DVN -> oapp.setPeer -> ReceiveUln302.verify -> ReceiveUln302.commitVerification -> endpoint.lzReceive`

## Local-Fork Evidence

Local-fork execution evidence is present for this publication row.

### Executed Steps

- `endpoint.setConfig Safe-as-DVN`
- `oapp.setPeer`
- `ReceiveUln302.verify`
- `ReceiveUln302.commitVerification`
- `endpoint.lzReceive`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
