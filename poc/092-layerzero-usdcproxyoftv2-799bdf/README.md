# LayerZero / USDCProxyOFTV2

## Summary

- Protocol: `LayerZero`
- Contract name: `USDCProxyOFTV2`
- Contract: [0x28a92dde19d9989f39a49905d7c9c2fac7799bdf](https://etherscan.io/address/0x28a92dde19d9989f39a49905d7c9c2fac7799bdf)
- Role: `OWNER`
- Authority holder: [0x246f3777b04411bbe71779e7d7ebf7d6b56b7cfb](https://etherscan.io/address/0x246f3777b04411bbe71779e7d7ebf7d6b56b7cfb)
- Control class: `2/4`
- Nested Safe: `❌`
- Funds moved in proof: `$1.9M`
- Execution class: `Multi-tx`

## Authority Path

`setTrustedRemoteAddress(remoteChainId=292, controlled peer) -> lzReceive(292, srcAddress, nonce=1, PT_SEND payload)`

## Local-Fork Evidence

Drain confirmed via USDCProxyOFTV2 setTrustedRemoteAddress + lzReceive PT_SEND (LZ v1). See docs/usdc_proxy_oft_v2_setremote_lzreceive_drain_poc.md.

### Executed Steps

- `setTrustedRemoteAddress(remoteChainId=292, attackerPeer)`; sender `0x246f3777b04411bbe71779e7d7ebf7d6b56b7cfb`
- `lzReceive(292, srcAddress, nonce=1, PT_SEND payload)`; sender `0x66a71dcef29a0ffbdbe3c6a460a3b5bc225cd675`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
