# EtherFi - OFT / EtherfiOFTAdapterUpgradeable

## Summary

- Protocol: `EtherFi - OFT`
- Contract name: `EtherfiOFTAdapterUpgradeable`
- Contract: [0xcd2eb13d6831d4602d80e5db9230a57596cdca63](https://etherscan.io/address/0xcd2eb13d6831d4602d80e5db9230a57596cdca63)
- Role: `OWNER`
- Authority holder: [0x2aca71020de61bb532008049e1bd41e451ae8adc](https://etherscan.io/address/0x2aca71020de61bb532008049e1bd41e451ae8adc)
- Control class: `4/7`
- Nested Safe: `❌`
- Funds moved in proof: `$254.7M`
- Execution class: `Atomic`

## Authority Path

`endpoint.setConfig -> oapp.setPeer -> setInboundRateLimits -> ReceiveUln302.verify -> ReceiveUln302.commitVerification -> endpoint.lzReceive`

## Local-Fork Evidence

LayerZero V2 owner/delegate compromise path verified as Safe-as-DVN; see docs/layerzero_v2_atomic_chain_validation.md.

### Executed Steps

- `endpoint.setConfig`; sender `0x2aca71020de61bb532008049e1bd41e451ae8adc`
- `oapp.setPeer`; sender `0x2aca71020de61bb532008049e1bd41e451ae8adc`
- `setInboundRateLimits`; sender `0x2aca71020de61bb532008049e1bd41e451ae8adc`
- `ReceiveUln302.verify`; sender `0x2aca71020de61bb532008049e1bd41e451ae8adc`
- `ReceiveUln302.commitVerification`; sender `0x2aca71020de61bb532008049e1bd41e451ae8adc`
- `endpoint.lzReceive`; sender `0x1a44076050125825900e736c501f859c50fE728c`; moved $304.0M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

Foundry smoke harness (single-holder path only): [`test/publication/LayerZeroOFTSafeDVNPoC.t.sol`](../../test/publication/LayerZeroOFTSafeDVNPoC.t.sol).

Run with `RETH_RPC=http://127.0.0.1:8545 forge test --match-path 'test/publication/LayerZeroOFTSafeDVNPoC.t.sol' -vv`.
