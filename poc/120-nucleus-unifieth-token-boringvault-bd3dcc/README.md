# Nucleus: unifiETH Token / BoringVault

## Summary

- Protocol: `Nucleus: unifiETH Token`
- Contract name: `BoringVault`
- Contract: [0x196ead472583bc1e9af7a05f860d9857e1bd3dcc](https://etherscan.io/address/0x196ead472583bc1e9af7a05f860d9857e1bd3dcc)
- Role: `OWNER`
- Authority holder: [0x0000000000417626ef34d62c4dc189b021603f2f](https://etherscan.io/address/0x0000000000417626ef34d62c4dc189b021603f2f)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$968.6K`
- Execution class: `Atomic`

## Authority Path

`manage -> transfer`

## Local-Fork Evidence

Local fork no-shortcut verification: the listed owner/Safe executed BoringVault.manage(token, transfer(attacker, current balance), 0), moving the current fork token balance to the attacker.

### Executed Steps

- `manage -> transfer`; sender `0x0000000000417626ef34d62c4dc189b021603f2f`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
