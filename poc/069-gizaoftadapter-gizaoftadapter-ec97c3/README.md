# GizaOFTAdapter / GizaOFTAdapter

## Summary

- Protocol: `GizaOFTAdapter`
- Contract name: `GizaOFTAdapter`
- Contract: [0x0b0e004b88a9c37453ad75c450f1147e9dec97c3](https://etherscan.io/address/0x0b0e004b88a9c37453ad75c450f1147e9dec97c3)
- Role: `OWNER`
- Authority holder: [0xa87dd67893ab39ace5c55501f6f9c1b390f86ae0](https://etherscan.io/address/0xa87dd67893ab39ace5c55501f6f9c1b390f86ae0)
- Control class: `2/4`
- Nested Safe: `❌`
- Funds moved in proof: `$5.6M`
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
