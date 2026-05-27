# AcuOFTAdapter / AcuOFTAdapter

## Summary

- Protocol: `AcuOFTAdapter`
- Contract name: `AcuOFTAdapter`
- Contract: [0x4ad11f4d6b4626e426fbe88e8f1c78f469ca33be](https://etherscan.io/address/0x4ad11f4d6b4626e426fbe88e8f1c78f469ca33be)
- Role: `OWNER`
- Authority holder: [0x95d490789d043d32fd33aa058afe1c8772c61e48](https://etherscan.io/address/0x95d490789d043d32fd33aa058afe1c8772c61e48)
- Control class: `4/7`
- Nested Safe: `❌`
- Funds moved in proof: `$2.2M`
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
