# USDT0 - OFT / OAdapterUpgradeable

## Summary

- Protocol: `USDT0 - OFT`
- Contract name: `OAdapterUpgradeable`
- Contract: [0x6c96de32cea08842dcc4058c14d3aaad7fa41dee](https://etherscan.io/address/0x6c96de32cea08842dcc4058c14d3aaad7fa41dee)
- Role: `OWNER`
- Authority holder: [0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8](https://etherscan.io/address/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$3.54B`
- Execution class: `Atomic`

## Authority Path

`endpoint.setConfig -> oapp.setPeer -> ReceiveUln302.verify -> ReceiveUln302.commitVerification -> endpoint.lzReceive`

## Local-Fork Evidence

LayerZero V2 owner/delegate compromise path verified as Safe-as-DVN; see docs/layerzero_v2_atomic_chain_validation.md.

### Executed Steps

- `endpoint.setConfig`; sender `0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`
- `oapp.setPeer`; sender `0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`
- `ReceiveUln302.verify`; sender `0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`
- `ReceiveUln302.commitVerification`; sender `0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`
- `endpoint.lzReceive`; sender `0x1a44076050125825900e736c501f859c50fE728c`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
