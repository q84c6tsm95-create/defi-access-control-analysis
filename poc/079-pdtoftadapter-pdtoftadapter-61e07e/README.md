# PDTOFTAdapter / PDTOFTAdapter

## Summary

- Protocol: `PDTOFTAdapter`
- Contract name: `PDTOFTAdapter`
- Contract: [0xeff2a458e464b07088bdb441c21a42ab4b61e07e](https://etherscan.io/address/0xeff2a458e464b07088bdb441c21a42ab4b61e07e)
- Role: `OWNER`
- Authority holder: [0xde6789416001db6f295e47d5c58b9e17de70ce65](https://etherscan.io/address/0xde6789416001db6f295e47d5c58b9e17de70ce65)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$3.9M`
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
