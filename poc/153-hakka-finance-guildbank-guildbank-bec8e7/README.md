# Hakka Finance GuildBank / GuildBank

## Summary

- Protocol: `Hakka Finance GuildBank`
- Contract name: `GuildBank`
- Contract: [0x83d0d842e6db3b020f384a2af11bd14787bec8e7](https://etherscan.io/address/0x83d0d842e6db3b020f384a2af11bd14787bec8e7)
- Role: `OWNER`
- Authority holder: [0xf2b8f214dc81b849ed3bdcaeda6c8c39625c500a](https://etherscan.io/address/0xf2b8f214dc81b849ed3bdcaeda6c8c39625c500a)
- Control class: `2/4`
- Nested Safe: `❌`
- Funds moved in proof: `$586.0K`
- Execution class: `Atomic`

## Authority Path

`withdraw(ETH)`

## Local-Fork Evidence

Owner can call withdraw(ETH sentinel, attacker, current ETH balance); Tenderly confirms full ETH balance movement.

### Executed Steps

- `withdraw(ETH)`; sender `0xf2b8f214dc81b849ed3bdcaeda6c8c39625c500a`; moved $603.2K

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

