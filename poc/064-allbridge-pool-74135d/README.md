# Allbridge / Pool

## Summary

- Protocol: `Allbridge`
- Contract name: `Pool`
- Contract: [0x7dbf07ad92ed4e26d5511b4f285508ebf174135d](https://etherscan.io/address/0x7dbf07ad92ed4e26d5511b4f285508ebf174135d)
- Role: `OWNER`
- Authority holder: [0x01a494079dcb715f622340301463ce50cd69a4d0](https://etherscan.io/address/0x01a494079dcb715f622340301463ce50cd69a4d0)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$6.2M`
- Execution class: `Multi-tx`

## Authority Path

`setBalanceRatioMinBP(0) -> setRouter(controlled recipient) -> swapFromVUsd(controlled recipient, 1000*tokenBalance, 0, false) -> claimAdminFee()`

## Local-Fork Evidence

Drain confirmed via Allbridge Pool setRouter + setBalanceRatioMinBP + swapFromVUsd. See docs/allbridge_pool_setrouter_drain_poc.md.

### Executed Steps

- `setBalanceRatioMinBP(0)`
- `setRouter(attacker)`
- `swapFromVUsd(attacker, 1000*tokenBalance, 0, false)`
- `claimAdminFee()`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

