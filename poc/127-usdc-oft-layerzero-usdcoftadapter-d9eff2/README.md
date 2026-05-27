# USDC OFT / LayerZero / USDCOFTAdapter

## Summary

- Protocol: `USDC OFT / LayerZero`
- Contract name: `USDCOFTAdapter`
- Contract: [0xc209a627a7b0a19f16a963d9f7281667a2d9eff2](https://etherscan.io/address/0xc209a627a7b0a19f16a963d9f7281667a2d9eff2)
- Role: `OWNER`
- Authority holder: [0xd7e22951de7af453aac5400d6e072e3b63beb7e2](https://etherscan.io/address/0xd7e22951de7af453aac5400d6e072e3b63beb7e2)
- Control class: `4/8`
- Nested Safe: `❌`
- Funds moved in proof: `$916.1K`
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
- `endpoint.lzReceive`; sender `0x1a44076050125825900e736c501f859c50fE728c`; moved $2.0K

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

