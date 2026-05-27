# Veda / BoringVault

Claim 54 of 160 in the generated publication set.

## Summary

- Protocol: `Veda`
- Contract name: `BoringVault`
- Contract: [0xdddd73f5df1f0dc31373357beac77545dc5a6f3f](https://etherscan.io/address/0xdddd73f5df1f0dc31373357beac77545dc5a6f3f)
- Role: `OWNER`
- Authority holder: [0xa08a0dc480bd60d1d56c8eec6c722125eafea982](https://etherscan.io/address/0xa08a0dc480bd60d1d56c8eec6c722125eafea982)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$8.8M`
- Execution class: `Atomic`

## Authority Path

`manage_transfer_USDC`

## Local-Fork Evidence

Manual >$500k review: privileged single-call path executed and transferred $8,936,790 USDC to the attacker.

### Executed Steps

- `manage_transfer_USDC`; sender `0xa08a0dc480bd60d1d56c8eec6c722125eafea982`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
