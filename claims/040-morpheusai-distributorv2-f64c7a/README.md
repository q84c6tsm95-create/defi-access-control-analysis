# MorpheusAI / DistributorV2

Claim 40 of 160 in the generated publication set.

## Summary

- Protocol: `MorpheusAI`
- Contract name: `DistributorV2`
- Contract: [0xdf1ac1ac255d91f5f4b1e3b4aef57c5350f64c7a](https://etherscan.io/address/0xdf1ac1ac255d91f5f4b1e3b4aef57c5350f64c7a)
- Role: `OWNER`
- Authority holder: [0x1fe04bc15cf2c5a2d41a0b3a96725596676eba1e](https://etherscan.io/address/0x1fe04bc15cf2c5a2d41a0b3a96725596676eba1e)
- Control class: `5/9`
- Nested Safe: `❌`
- Funds moved in proof: `$16.9M`
- Execution class: `Atomic`

## Authority Path

`upgradeToAndCall`

## Local-Fork Evidence

Corrected from stale withdrawUndistributedRewards false-positive path. MorpheusAI DistributorV2 is an owner-controlled UUPS proxy; Tenderly confirms one atomic upgradeToAndCall can install attacker logic and execute the stETH drain in the same transaction.

### Executed Steps

- `upgradeToAndCall`; sender `0x1fe04bc15cf2c5a2d41a0b3a96725596676eba1e`; moved $17.4M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
