# MLRTOFTAdapter / MLRTOFTAdapter

## Summary

- Protocol: `MLRTOFTAdapter`
- Contract name: `MLRTOFTAdapter`
- Contract: [0x4176e11de6707c1d12d0ca89f40706dcf6376e24](https://etherscan.io/address/0x4176e11de6707c1d12d0ca89f40706dcf6376e24)
- Role: `OWNER`
- Authority holder: [0xf433c2a2d6facecdd9edd7b8ce9ceaab96f41866](https://etherscan.io/address/0xf433c2a2d6facecdd9edd7b8ce9ceaab96f41866)
- Control class: `3/7`
- Nested Safe: `❌`
- Funds moved in proof: `$38.4M`
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
