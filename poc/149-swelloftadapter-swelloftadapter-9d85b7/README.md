# SwellOFTAdapter / SwellOFTAdapter

## Summary

- Protocol: `SwellOFTAdapter`
- Contract name: `SwellOFTAdapter`
- Contract: [0x09341022ea237a4db1644de7ccf8fa0e489d85b7](https://etherscan.io/address/0x09341022ea237a4db1644de7ccf8fa0e489d85b7)
- Role: `OWNER`
- Authority holder: [0x20fdf47509c5efc0e1101e3ce443691781c17f90](https://etherscan.io/address/0x20fdf47509c5efc0e1101e3ce443691781c17f90)
- Control class: `4/7`
- Nested Safe: `❌`
- Funds moved in proof: `$617.3K`
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
