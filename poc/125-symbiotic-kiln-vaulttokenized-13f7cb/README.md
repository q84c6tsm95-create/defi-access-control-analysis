# Symbiotic / Kiln / VaultTokenized

## Summary

- Protocol: `Symbiotic / Kiln`
- Contract name: `VaultTokenized`
- Contract: [0xaf07131c497e06361dc2f75de63dc1d3e113f7cb](https://etherscan.io/address/0xaf07131c497e06361dc2f75de63dc1d3e113f7cb)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0x059ae3f8a1eaddaab34d0a74e8eb752c848062d1](https://etherscan.io/address/0x059ae3f8a1eaddaab34d0a74e8eb752c848062d1)
- Control class: `3/7`
- Nested Safe: `❌`
- Funds moved in proof: `$934.5K`
- Execution class: `Multi-tx`

## Authority Path

`grantRole -> setDepositorWhitelistStatus`

## Local-Fork Evidence

Drain confirmed via Symbiotic VaultTokenized full-stack drain (Safe controls burner + delegator). See docs/symbiotic_kiln_vaulttokenized_sibling_drain_poc.md.

### Executed Steps

- `grantRole`; sender `0x059ae3f8a1eaddaab34d0a74e8eb752c848062d1`
- `setDepositorWhitelistStatus`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
