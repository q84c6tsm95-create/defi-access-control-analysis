# TransparentUpgradeableProxy / TransparentUpgradeableProxy

## Summary

- Protocol: `TransparentUpgradeableProxy`
- Contract name: `TransparentUpgradeableProxy`
- Contract: [0x688aee022aa544f150678b8e5720b6b96a9e9a2f](https://etherscan.io/address/0x688aee022aa544f150678b8e5720b6b96a9e9a2f)
- Role: `OWNER`
- Authority holder: [0xce1ce7c7f436dcc4e28bc8bf86115514d3dc34e8](https://etherscan.io/address/0xce1ce7c7f436dcc4e28bc8bf86115514d3dc34e8)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$827.9K`
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

Foundry harness: [`test/publication/LayerZeroOFTSafeDVNPoC.t.sol`](../../test/publication/LayerZeroOFTSafeDVNPoC.t.sol).

Run with `RETH_RPC=http://127.0.0.1:8545 forge test --match-path 'test/publication/LayerZeroOFTSafeDVNPoC.t.sol' -vv`.
