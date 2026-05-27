# ENAOFTAdapter / ENAOFTAdapter

Claim 47 of 160 in the generated publication set.

## Summary

- Protocol: `ENAOFTAdapter`
- Contract name: `ENAOFTAdapter`
- Contract: [0x58538e6a46e07434d7e7375bc268d3cb839c0133](https://etherscan.io/address/0x58538e6a46e07434d7e7375bc268d3cb839c0133)
- Role: `OWNER`
- Authority holder: [0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862](https://etherscan.io/address/0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862)
- Control class: `5/10`
- Nested Safe: `❌`
- Funds moved in proof: `$11.5M`
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
