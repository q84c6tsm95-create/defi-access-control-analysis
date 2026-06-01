# Veda / BoringVault

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

`manage -> transfer`

## Local-Fork Evidence

Local fork no-shortcut verification: the listed owner/Safe executed BoringVault.manage(token, transfer(attacker, current balance), 0), moving the current fork token balance to the attacker.

### Executed Steps

- `manage -> transfer`; sender `0xa08a0dc480bd60d1d56c8eec6c722125eafea982`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
