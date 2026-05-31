# OriginalTokenBridge / LayerZero / OriginalTokenBridge

## Summary

- Protocol: `OriginalTokenBridge / LayerZero`
- Contract name: `OriginalTokenBridge`
- Contract: [0x1f8e735f424b7a49a885571a2fa104e8c13c26c7](https://etherscan.io/address/0x1f8e735f424b7a49a885571a2fa104e8c13c26c7)
- Role: `OWNER`
- Authority holder: [0xc22d21612462d01e4a855973609ee9ac6183b195](https://etherscan.io/address/0xc22d21612462d01e4a855973609ee9ac6183b195)
- Control class: `2/3`
- Nested Safe: `❌`
- Funds moved in proof: `$15.1M`
- Execution class: `Atomic`

## Authority Path

`setConfig -> setTrustedRemoteAddress -> lzReceive`

## Local-Fork Evidence

Scanner row was config-ok (the analyzer-picked function is a non-draining setter). Drain reproduced on the local fork via: LayerZero v1 setTrustedRemoteAddress + forged lzReceive (PT_UNLOCK). See docs/originaltokenbridge_setremote_lzreceive_drain_poc.md.

### Executed Steps

- `setConfig`; sender `0xc22d21612462d01e4a855973609ee9ac6183b195`
- `setTrustedRemoteAddress`; sender `0xc22d21612462d01e4a855973609ee9ac6183b195`
- `lzReceive`; sender `0x66a71dcef29a0ffbdbe3c6a460a3b5bc225cd675`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
