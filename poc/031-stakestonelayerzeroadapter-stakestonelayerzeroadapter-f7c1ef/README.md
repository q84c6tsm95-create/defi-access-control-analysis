# StakeStoneLayerZeroAdapter / StakeStoneLayerZeroAdapter

## Summary

- Protocol: `StakeStoneLayerZeroAdapter`
- Contract name: `StakeStoneLayerZeroAdapter`
- Contract: [0x219fcc806358a8fcd5e207b37db0f5b6f5f7c1ef](https://etherscan.io/address/0x219fcc806358a8fcd5e207b37db0f5b6f5f7c1ef)
- Role: `OWNER`
- Authority holder: [0x0014b2f46aa53077f8b7fbdb53a8288636c189c9](https://etherscan.io/address/0x0014b2f46aa53077f8b7fbdb53a8288636c189c9)
- Control class: `4/6`
- Nested Safe: `❌`
- Funds moved in proof: `$33.7M`
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
