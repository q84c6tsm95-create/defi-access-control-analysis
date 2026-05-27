# KernelDAO: Bridge / RSETH_OFTAdapter

## Summary

- Protocol: `KernelDAO: Bridge`
- Contract name: `RSETH_OFTAdapter`
- Contract: [0x85d456b2dff1fd8245387c0bfb64dfb700e98ef3](https://etherscan.io/address/0x85d456b2dff1fd8245387c0bfb64dfb700e98ef3)
- Role: `OWNER`
- Authority holder: [0xcbcdd778aa25476f203814214dd3e9b9c46829a1](https://etherscan.io/address/0xcbcdd778aa25476f203814214dd3e9b9c46829a1)
- Control class: `3/6`
- Nested Safe: `❌`
- Funds moved in proof: `$232.3M`
- Execution class: `Atomic`

## Authority Path

`endpoint.setConfig -> oapp.setPeer -> ReceiveUln302.verify -> ReceiveUln302.commitVerification -> endpoint.lzReceive`

## Local-Fork Evidence

LayerZero V2 owner/delegate compromise path verified as Safe-as-DVN; see docs/layerzero_v2_atomic_chain_validation.md.

### Executed Steps

- `endpoint.setConfig`; sender `0xcbcdd778aa25476f203814214dd3e9b9c46829a1`
- `oapp.setPeer`; sender `0xcbcdd778aa25476f203814214dd3e9b9c46829a1`
- `ReceiveUln302.verify`; sender `0xcbcdd778aa25476f203814214dd3e9b9c46829a1`
- `ReceiveUln302.commitVerification`; sender `0xcbcdd778aa25476f203814214dd3e9b9c46829a1`
- `endpoint.lzReceive`; sender `0x1a44076050125825900e736c501f859c50fE728c`; moved $4.7M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

