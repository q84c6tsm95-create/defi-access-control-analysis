# Nucleus: tETH Token / BoringVault

## Summary

- Protocol: `Nucleus: tETH Token`
- Contract name: `BoringVault`
- Contract: [0x19e099b7aed41fa52718d780dda74678113c0b32](https://etherscan.io/address/0x19e099b7aed41fa52718d780dda74678113c0b32)
- Role: `OWNER`
- Authority holder: [0x0000000000417626ef34d62c4dc189b021603f2f](https://etherscan.io/address/0x0000000000417626ef34d62c4dc189b021603f2f)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$749.7K`
- Execution class: `Atomic`

## Authority Path

`manage -> transfer`

## Local-Fork Evidence

Local fork no-shortcut verification: the listed owner/Safe executed BoringVault.manage(token, transfer(attacker, current balance), 0), moving the current fork token balance to the attacker.

### Executed Steps

- `manage -> transfer`; sender `0x0000000000417626ef34d62c4dc189b021603f2f`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

