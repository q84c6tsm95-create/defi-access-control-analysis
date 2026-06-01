# Ethena - OFT / USDeOFTAdapter

## Summary

- Protocol: `Ethena - OFT`
- Contract name: `USDeOFTAdapter`
- Contract: [0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34](https://etherscan.io/address/0x5d3a1ff2b6bab83b63cd9ad0787074081a52ef34)
- Role: `OWNER`
- Authority holder: [0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862](https://etherscan.io/address/0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862)
- Control class: `5/10`
- Nested Safe: `❌`
- Funds moved in proof: `$1.77B`
- Execution class: `Atomic`

## Authority Path

`endpoint.setConfig -> oapp.setPeer -> ReceiveUln302.verify -> ReceiveUln302.commitVerification -> endpoint.lzReceive`

## Local-Fork Evidence

LayerZero V2 owner/delegate compromise path verified as Safe-as-DVN; see docs/layerzero_v2_atomic_chain_validation.md.

### Executed Steps

- `endpoint.setConfig`; sender `0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862`
- `oapp.setPeer`; sender `0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862`
- `ReceiveUln302.verify`; sender `0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862`
- `ReceiveUln302.commitVerification`; sender `0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862`
- `endpoint.lzReceive`; sender `0x1a44076050125825900e736c501f859c50fE728c`; moved $1.67B

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
