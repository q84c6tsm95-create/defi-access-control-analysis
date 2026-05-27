# RoboOFTAdapter / RoboOFTAdapter

Claim 74 of 160 in the generated publication set.

## Summary

- Protocol: `RoboOFTAdapter`
- Contract name: `RoboOFTAdapter`
- Contract: [0x407a5fb66cb1b3d50004f7091c08a27b42ba6d6f](https://etherscan.io/address/0x407a5fb66cb1b3d50004f7091c08a27b42ba6d6f)
- Role: `OWNER`
- Authority holder: [0x1e63183fb2123f0674582a5a2d251e72de0bd8bf](https://etherscan.io/address/0x1e63183fb2123f0674582a5a2d251e72de0bd8bf)
- Control class: `3/5`
- Nested Safe: `✅ (1/3)`
- Funds moved in proof: `$4.3M`
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
