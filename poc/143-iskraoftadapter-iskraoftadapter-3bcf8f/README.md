# IskraOFTAdapter / IskraOFTAdapter

## Summary

- Protocol: `IskraOFTAdapter`
- Contract name: `IskraOFTAdapter`
- Contract: [0xf1ba5c811ae1f72fd87cfbfc04f781a12e3bcf8f](https://etherscan.io/address/0xf1ba5c811ae1f72fd87cfbfc04f781a12e3bcf8f)
- Role: `OWNER`
- Authority holder: [0x6727b22867e7ece399aa306f94d5521f59a59a12](https://etherscan.io/address/0x6727b22867e7ece399aa306f94d5521f59a59a12)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$692.9K`
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
