# Allbridge / Pool

## Summary

- Protocol: `Allbridge`
- Contract name: `Pool`
- Contract: [0xa7062bba94c91d565ae33b893ab5dfaf1fc57c4d](https://etherscan.io/address/0xa7062bba94c91d565ae33b893ab5dfaf1fc57c4d)
- Role: `OWNER`
- Authority holder: [0x01a494079dcb715f622340301463ce50cd69a4d0](https://etherscan.io/address/0x01a494079dcb715f622340301463ce50cd69a4d0)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$1.9M`
- Execution class: `Multi-tx`

## Authority Path

`setBalanceRatioMinBP(0) -> setRouter(controlled recipient) -> swapFromVUsd(controlled recipient, 1000*tokenBalance, 0, false) -> claimAdminFee`

## Local-Fork Evidence

Drain confirmed via Allbridge Pool same pattern (sibling). See docs/allbridge_pool_setrouter_drain_poc.md.

### Executed Steps

- `setBalanceRatioMinBP(0)`; sender `0x01a494079dcb715f622340301463ce50cd69a4d0`
- `setRouter(attacker)`; sender `0x01a494079dcb715f622340301463ce50cd69a4d0`
- `swapFromVUsd(attacker, 1000*tokenBalance, 0, false)`; sender `0xdead0000000000000000000000000000deadbeef`
- `claimAdminFee`; sender `0x01a494079dcb715f622340301463ce50cd69a4d0`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
