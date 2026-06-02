# Splits: SmartVault / SmartVault

## Summary

- Protocol: `Splits: SmartVault`
- Contract name: `SmartVault`
- Contract: [0x810b0aa06bdc6a7a571afd2fed1ba30fe3201565](https://etherscan.io/address/0x810b0aa06bdc6a7a571afd2fed1ba30fe3201565)
- Role: `OWNER`
- Authority holder: [0x61fba0e6bd644ad976eb3a96d19f58fa811ca22e](https://etherscan.io/address/0x61fba0e6bd644ad976eb3a96d19f58fa811ca22e)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$1.4M`
- Execution class: `Atomic`

## Authority Path

`execute(Call: USDT.transfer)`

## Local-Fork Evidence

Local fork verified: SmartVault owner execute(Call) moved the current USDT balance to the attacker. See docs/smartvault_execute_drain_poc.md.

### Executed Steps

- `execute(Call: USDT.transfer)`; sender `0x61fba0e6bd644ad976eb3a96d19f58fa811ca22e`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
