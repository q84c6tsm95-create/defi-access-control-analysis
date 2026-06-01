# TransparentUpgradeableProxy / TransparentUpgradeableProxy

## Summary

- Protocol: `TransparentUpgradeableProxy`
- Contract name: `TransparentUpgradeableProxy`
- Contract: [0x60af2681bcc4886935f428a1386a4a68973f7c4f](https://etherscan.io/address/0x60af2681bcc4886935f428a1386a4a68973f7c4f)
- Role: `OWNER`
- Authority holder: [0x4e59e778a0fb77fbb305637435c62faed9aed40f](https://etherscan.io/address/0x4e59e778a0fb77fbb305637435c62faed9aed40f)
- Control class: `6/14`
- Nested Safe: `❌`
- Funds moved in proof: `$3.6M`
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

Foundry smoke harness (single-holder path only): [`test/publication/LayerZeroOFTSafeDVNPoC.t.sol`](../../test/publication/LayerZeroOFTSafeDVNPoC.t.sol).

Run with `RETH_RPC=http://127.0.0.1:8545 forge test --match-path 'test/publication/LayerZeroOFTSafeDVNPoC.t.sol' -vv`.
