# Acre Finance / OffchainBtcVault

Claim 67 of 160 in the generated publication set.

## Summary

- Protocol: `Acre Finance`
- Contract name: `OffchainBtcVault`
- Contract: [0x6cbe98eb2cdf0bc2e52a9b3ed014cd1740a4b30c](https://etherscan.io/address/0x6cbe98eb2cdf0bc2e52a9b3ed014cd1740a4b30c)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0x6c15e4bc44cc5674b1d7956d0e9596d2e509ed24](https://etherscan.io/address/0x6c15e4bc44cc5674b1d7956d0e9596d2e509ed24)
- Control class: `4/7`
- Nested Safe: `❌`
- Funds moved in proof: `$5.9M`
- Execution class: `Atomic`

## Authority Path

`upgradeToAndCall(replacement implementation, drainErc20)`

## Local-Fork Evidence

Corrected from stale rescueTokens path. rescueTokens excludes WBTC, but DEFAULT_ADMIN_ROLE authorizes UUPS upgradeToAndCall; Tenderly confirms one admin transaction can install attacker logic and move 78.16494998 WBTC to attacker.

### Executed Steps

- `upgradeToAndCall(MAL_IMPL, drainErc20(WBTC, attacker))`; sender `0x6c15e4bc44cc5674b1d7956d0e9596d2e509ed24`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
