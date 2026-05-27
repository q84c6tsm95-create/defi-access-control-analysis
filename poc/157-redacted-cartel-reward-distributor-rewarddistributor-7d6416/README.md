# Redacted Cartel: Reward Distributor / RewardDistributor

## Summary

- Protocol: `Redacted Cartel: Reward Distributor`
- Contract name: `RewardDistributor`
- Contract: [0xa9b08b4ceec1ef29edec7f9c94583270337d6416](https://etherscan.io/address/0xa9b08b4ceec1ef29edec7f9c94583270337d6416)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0xa52fd396891e7a74b641a2cb1a6999fcf56b077e](https://etherscan.io/address/0xa52fd396891e7a74b641a2cb1a6999fcf56b077e)
- Control class: `3/7`
- Nested Safe: `❌`
- Funds moved in proof: `$546.4K`
- Execution class: `Delayed`

## Authority Path

`updateRewardsMetadata -> claim`

## Local-Fork Evidence

Corrected from setPauseState config-ok. DEFAULT_ADMIN_ROLE can set a one-leaf reward Merkle root for attacker and USDC; after the 3 hour active timer, claim transfers the authorized USDC balance to attacker.

### Executed Steps

- `updateRewardsMetadata`; sender `0xa52fd396891e7a74b641a2cb1a6999fcf56b077e`
- `claim`; sender `0xdead0000000000000000000000000000deadbeef`; moved $536.2K

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

