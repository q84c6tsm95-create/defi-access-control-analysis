# ThBillOFTAdapter / ThBillOFTAdapter

## Summary

- Protocol: `ThBillOFTAdapter`
- Contract name: `ThBillOFTAdapter`
- Contract: [0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a](https://etherscan.io/address/0xfdd22ce6d1f66bc0ec89b20bf16ccb6670f55a5a)
- Role: `OWNER`
- Authority holder: [0x94877640dd9e6f1e3cb56bf7b5665b7152601295](https://etherscan.io/address/0x94877640dd9e6f1e3cb56bf7b5665b7152601295)
- Control class: `4/6`
- Nested Safe: `❌`
- Funds moved in proof: `$43.6M`
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
