# StableWrapper / LayerZero / StableWrapper

## Summary

- Protocol: `StableWrapper / LayerZero`
- Contract name: `StableWrapper`
- Contract: [0x6eaf19b2fc24552925db245f9ff613157a7dbb4c](https://etherscan.io/address/0x6eaf19b2fc24552925db245f9ff613157a7dbb4c)
- Role: `OWNER`
- Authority holder: [0x14bcd9da052cdc6fe0b9446d5a616d5b7b4d4550](https://etherscan.io/address/0x14bcd9da052cdc6fe0b9446d5a616d5b7b4d4550)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$1.8M`
- Execution class: `Atomic`

## Authority Path

`transferAsset(controlled recipient, balance, USDC)`

## Local-Fork Evidence

Drain confirmed via StableWrapper transferAsset. See docs/stable_wrapper_transferasset_drain_poc.md.

### Executed Steps

- `transferAsset(attacker, balance, USDC)`; sender `0x14bcd9da052cdc6fe0b9446d5a616d5b7b4d4550`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
