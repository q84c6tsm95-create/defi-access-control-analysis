# VaultProxy / ProxyManager / ProxyManager

## Summary

- Protocol: `VaultProxy / ProxyManager`
- Contract name: `ProxyManager`
- Contract: [0xc615f91a31791f1bf4ac7f7fdc60525bf1804186](https://etherscan.io/address/0xc615f91a31791f1bf4ac7f7fdc60525bf1804186)
- Role: `OWNER`
- Authority holder: [0xeb514cddadac0ae3f95040610c65d0d50060dd46](https://etherscan.io/address/0xeb514cddadac0ae3f95040610c65d0d50060dd46)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$3.6M`
- Execution class: `Multi-tx`

## Authority Path

`setPaused(true) -> emergencyWithdrawToken -> owner transfer`

## Local-Fork Evidence

Local fork verified: owner pauses VaultProxy, withdraws current USDC/USDT/DAI balances to the owner, then forwards the withdrawn balances to the attacker.

### Executed Steps

- `setPaused(true)`; sender `0xeb514cddadac0ae3f95040610c65d0d50060dd46`
- `emergencyWithdrawToken`; sender `0xeb514cddadac0ae3f95040610c65d0d50060dd46`
- `owner transfer`; sender `0xeb514cddadac0ae3f95040610c65d0d50060dd46`
- `emergencyWithdrawToken`; sender `0xeb514cddadac0ae3f95040610c65d0d50060dd46`
- `owner transfer`; sender `0xeb514cddadac0ae3f95040610c65d0d50060dd46`
- `emergencyWithdrawToken`; sender `0xeb514cddadac0ae3f95040610c65d0d50060dd46`
- `owner transfer`; sender `0xeb514cddadac0ae3f95040610c65d0d50060dd46`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
