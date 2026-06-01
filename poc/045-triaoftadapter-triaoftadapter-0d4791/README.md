# TriaOFTAdapter / TriaOFTAdapter

## Summary

- Protocol: `TriaOFTAdapter`
- Contract name: `TriaOFTAdapter`
- Contract: [0xf1df8aa0b7955b23b10d80193a412ac5650d4791](https://etherscan.io/address/0xf1df8aa0b7955b23b10d80193a412ac5650d4791)
- Role: `OWNER`
- Authority holder: [0x8fdb5a7dff1dec06a2efd5778a237b80715515a7](https://etherscan.io/address/0x8fdb5a7dff1dec06a2efd5778a237b80715515a7)
- Control class: `3/4`
- Nested Safe: `❌`
- Funds moved in proof: `$12.4M`
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
