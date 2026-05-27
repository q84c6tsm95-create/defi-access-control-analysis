# Ethena / StakedUSDeV2

Claim 3 of 160 in the generated publication set.

## Summary

- Protocol: `Ethena`
- Contract name: `StakedUSDeV2`
- Contract: [0x9d39a5de30e57443bff2a8307a4256c8797a3497](https://etherscan.io/address/0x9d39a5de30e57443bff2a8307a4256c8797a3497)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862](https://etherscan.io/address/0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862)
- Control class: `5/10`
- Nested Safe: `❌`
- Funds moved in proof: `$1.81B`
- Execution class: `Atomic`

## Authority Path

`grant FULL_RESTRICTED_STAKER_ROLE to affected holder -> redistributeLockedAmount(affected holder, admin Safe) -> setCooldownDuration(0) -> redeem(redistributed shares, controlled recipient, admin Safe)`

## Local-Fork Evidence

Corrected from rescueTokens false positive. rescueTokens rejects the USDe asset, but DEFAULT_ADMIN_ROLE can grant FULL_RESTRICTED_STAKER_ROLE to a live sUSDe holder, redistribute that holder's shares to the admin Safe, set cooldownDuration to zero, and redeem the redistributed shares to attacker. Tenderly confirms USDe moves to attacker in one Safe-controlled bundle.

### Executed Steps

- `grant FULL_RESTRICTED_STAKER_ROLE to victim`; sender `0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862`
- `redistributeLockedAmount(victim, admin Safe)`; sender `0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862`
- `setCooldownDuration(0)`; sender `0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862`
- `redeem(redistributed shares, attacker, admin Safe)`; sender `0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862`; moved $117.5M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
