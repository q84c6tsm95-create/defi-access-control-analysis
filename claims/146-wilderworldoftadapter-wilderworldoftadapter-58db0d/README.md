# WilderWorldOFTAdapter / WilderWorldOFTAdapter

Claim 146 of 160 in the generated publication set.

## Summary

- Protocol: `WilderWorldOFTAdapter`
- Contract name: `WilderWorldOFTAdapter`
- Contract: [0xafde2490236bc64950def5472296aa0d9758db0d](https://etherscan.io/address/0xafde2490236bc64950def5472296aa0d9758db0d)
- Role: `OWNER`
- Authority holder: [0xf2afa0e4e9b3219600eec4ed8b326540fd9a7db1](https://etherscan.io/address/0xf2afa0e4e9b3219600eec4ed8b326540fd9a7db1)
- Control class: `4/7`
- Nested Safe: `❌`
- Funds moved in proof: `$671.2K`
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

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
