# MorphoOFTAdapter / MorphoOFTAdapter

## Summary

- Protocol: `MorphoOFTAdapter`
- Contract name: `MorphoOFTAdapter`
- Contract: [0x50d3d6fd7518682155e3c1b65fdd50e1b35649d9](https://etherscan.io/address/0x50d3d6fd7518682155e3c1b65fdd50e1b35649d9)
- Role: `OWNER`
- Authority holder: [0xcba28b38103307ec8da98377fff9816c164f9afa](https://etherscan.io/address/0xcba28b38103307ec8da98377fff9816c164f9afa)
- Control class: `5/9`
- Nested Safe: `❌`
- Funds moved in proof: `$706.8K`
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
