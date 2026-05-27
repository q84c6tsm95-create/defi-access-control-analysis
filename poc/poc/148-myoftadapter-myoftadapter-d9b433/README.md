# MyOFTAdapter / MyOFTAdapter

## Summary

- Protocol: `MyOFTAdapter`
- Contract name: `MyOFTAdapter`
- Contract: [0x801642b6efb861fe624dad704b7a747779d9b433](https://etherscan.io/address/0x801642b6efb861fe624dad704b7a747779d9b433)
- Role: `OWNER`
- Authority holder: [0x21fe3e26e824783ca7e374355a8d30ae8bbf6e37](https://etherscan.io/address/0x21fe3e26e824783ca7e374355a8d30ae8bbf6e37)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$639.5K`
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
