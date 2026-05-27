# PUFFERAdapter / PUFFERAdapter

Claim 132 of 160 in the generated publication set.

## Summary

- Protocol: `PUFFERAdapter`
- Contract name: `PUFFERAdapter`
- Contract: [0x3ea9bb9fcdcc1c37cb09175aecdb488a97edd83f](https://etherscan.io/address/0x3ea9bb9fcdcc1c37cb09175aecdb488a97edd83f)
- Role: `OWNER`
- Authority holder: [0xc0896ab1a8cae8c2c1d27d011eb955cca955580d](https://etherscan.io/address/0xc0896ab1a8cae8c2c1d27d011eb955cca955580d)
- Control class: `3/6`
- Nested Safe: `❌`
- Funds moved in proof: `$858.1K`
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
