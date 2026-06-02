# The Sandbox / OFTAdapterForSand

## Summary

- Protocol: `The Sandbox`
- Contract name: `OFTAdapterForSand`
- Contract: [0xac531eb26ca1d21b85126de8fb87e80e09002dcf](https://etherscan.io/address/0xac531eb26ca1d21b85126de8fb87e80e09002dcf)
- Role: `OWNER`
- Authority holder: [0x6ec4090d0f3cb76d9f3d8c4d5bb058a225e560a1](https://etherscan.io/address/0x6ec4090d0f3cb76d9f3d8c4d5bb058a225e560a1)
- Control class: `3/6`
- Nested Safe: `❌`
- Funds moved in proof: `$1.0M`
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
