# PUFFERAdapter / PUFFERAdapter

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

This folder is generated from the current publication data and local-fork simulation cache.

Foundry smoke harness (single-holder path only): [`test/publication/LayerZeroOFTSafeDVNPoC.t.sol`](../../test/publication/LayerZeroOFTSafeDVNPoC.t.sol).

Run with `RETH_RPC=http://127.0.0.1:8545 forge test --match-path 'test/publication/LayerZeroOFTSafeDVNPoC.t.sol' -vv`.
