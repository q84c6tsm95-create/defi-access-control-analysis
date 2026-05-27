# WETH OFT / LayerZero / WETHOFTAdapter

## Summary

- Protocol: `WETH OFT / LayerZero`
- Contract name: `WETHOFTAdapter`
- Contract: [0x06e01cb086fea9c644a2c105a9f20cfc21a526e8](https://etherscan.io/address/0x06e01cb086fea9c644a2c105a9f20cfc21a526e8)
- Role: `OWNER`
- Authority holder: [0xd7e22951de7af453aac5400d6e072e3b63beb7e2](https://etherscan.io/address/0xd7e22951de7af453aac5400d6e072e3b63beb7e2)
- Control class: `4/8`
- Nested Safe: `❌`
- Funds moved in proof: `$559.6K`
- Execution class: `Atomic`

## Authority Path

`endpoint.setConfig -> oapp.setPeer -> ReceiveUln302.verify -> ReceiveUln302.commitVerification -> endpoint.lzReceive`

## Local-Fork Evidence

LayerZero V2 owner/delegate compromise path verified as Safe-as-DVN; see docs/layerzero_v2_atomic_chain_validation.md.

### Executed Steps

- `endpoint.setConfig`; sender `0xd7e22951de7af453aac5400d6e072e3b63beb7e2`
- `oapp.setPeer`; sender `0xd7e22951de7af453aac5400d6e072e3b63beb7e2`
- `ReceiveUln302.verify`; sender `0xd7e22951de7af453aac5400d6e072e3b63beb7e2`
- `ReceiveUln302.commitVerification`; sender `0xd7e22951de7af453aac5400d6e072e3b63beb7e2`
- `endpoint.lzReceive`; sender `0x1a44076050125825900e736c501f859c50fE728c`; moved $43.6K

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
