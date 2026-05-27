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
- Execution class: `Multi-tx`

## Authority Path

`requestOwnershipHandover -> completeOwnershipHandover`

## Local-Fork Evidence

Drain confirmed via SmartVault Solady AA execute(Call). See docs/smartvault_execute_drain_poc.md.

### Executed Steps

- `requestOwnershipHandover`; sender `0xdead0000000000000000000000000000deadbeef`
- `completeOwnershipHandover`; sender `0x61fba0e6bd644ad976eb3a96d19f58fa811ca22e`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

