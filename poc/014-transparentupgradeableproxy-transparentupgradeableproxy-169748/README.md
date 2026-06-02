# TransparentUpgradeableProxy / TransparentUpgradeableProxy

## Summary

- Protocol: `TransparentUpgradeableProxy`
- Contract name: `TransparentUpgradeableProxy`
- Contract: [0xc0d626efba75d74d6c50e3b1dadbb41d32169748](https://etherscan.io/address/0xc0d626efba75d74d6c50e3b1dadbb41d32169748)
- Role: `OWNER`
- Authority holder: [0x1869bfd77d61d5025471b095221e97388f6bb849](https://etherscan.io/address/0x1869bfd77d61d5025471b095221e97388f6bb849)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$83.2M`
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
