# Allbridge / Pool

Claim 94 of 160 in the generated publication set.

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

`setBalanceRatioMinBP(0) -> setRouter(controlled recipient) -> swapFromVUsd(controlled recipient, 1000*tokenBalance, 0, false) -> claimAdminFee()`

## Local-Fork Evidence

Drain confirmed via Allbridge Pool same pattern (sibling). See docs/allbridge_pool_setrouter_drain_poc.md.

### Executed Steps

- `setBalanceRatioMinBP(0)`
- `setRouter(attacker)`
- `swapFromVUsd(attacker, 1000*tokenBalance, 0, false)`
- `claimAdminFee()`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
