# DeBoxTokenOFTAdapter / DeBoxTokenOFTAdapter

## Summary

- Protocol: `DeBoxTokenOFTAdapter`
- Contract name: `DeBoxTokenOFTAdapter`
- Contract: [0xe3b60790607afe418adcaadcb5e07f8124ed4b26](https://etherscan.io/address/0xe3b60790607afe418adcaadcb5e07f8124ed4b26)
- Role: `OWNER`
- Authority holder: [0x7393c2ed462ce04d5c923bf7e8953be7d7c736ac](https://etherscan.io/address/0x7393c2ed462ce04d5c923bf7e8953be7d7c736ac)
- Control class: `2/3`
- Nested Safe: `❌`
- Funds moved in proof: `$7.6M`
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
