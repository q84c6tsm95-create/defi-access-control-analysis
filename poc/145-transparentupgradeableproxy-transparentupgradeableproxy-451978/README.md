# TransparentUpgradeableProxy / TransparentUpgradeableProxy

## Summary

- Protocol: `TransparentUpgradeableProxy`
- Contract name: `TransparentUpgradeableProxy`
- Contract: [0xab17c1fe647c37ceb9b96d1c27dd189bf8451978](https://etherscan.io/address/0xab17c1fe647c37ceb9b96d1c27dd189bf8451978)
- Role: `OWNER`
- Authority holder: [0xd6889f307be1b83bb355d5da7d4478fb0d2af547](https://etherscan.io/address/0xd6889f307be1b83bb355d5da7d4478fb0d2af547)
- Control class: `4/6`
- Nested Safe: `❌`
- Funds moved in proof: `$593.9K`
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
