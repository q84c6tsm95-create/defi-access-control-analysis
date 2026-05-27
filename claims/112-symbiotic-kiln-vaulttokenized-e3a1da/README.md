# Symbiotic / Kiln / VaultTokenized

Claim 112 of 160 in the generated publication set.

## Summary

- Protocol: `Symbiotic / Kiln`
- Contract name: `VaultTokenized`
- Contract: [0xc10a7f0ac6e3944f4860ee97a937c51572e3a1da](https://etherscan.io/address/0xc10a7f0ac6e3944f4860ee97a937c51572e3a1da)
- Role: `OWNER`
- Authority holder: [0x059ae3f8a1eaddaab34d0a74e8eb752c848062d1](https://etherscan.io/address/0x059ae3f8a1eaddaab34d0a74e8eb752c848062d1)
- Control class: `3/7`
- Nested Safe: `❌`
- Funds moved in proof: `$1.3M`
- Execution class: `Multi-tx`

## Authority Path

`grantRole -> setDepositorWhitelistStatus`

## Local-Fork Evidence

Drain confirmed via Symbiotic VaultTokenized full-stack drain (Safe controls burner + delegator). See docs/symbiotic_kiln_vaulttokenized_sibling_drain_poc.md.

### Executed Steps

- `grantRole`; sender `0x059ae3f8a1eaddaab34d0a74e8eb752c848062d1`
- `setDepositorWhitelistStatus`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
