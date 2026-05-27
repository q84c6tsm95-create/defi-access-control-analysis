# Ethena / EthenaLPStaking

Claim 56 of 160 in the generated publication set.

## Summary

- Protocol: `Ethena`
- Contract name: `EthenaLPStaking`
- Contract: [0x8707f238936c12c309bfc2b9959c35828acfc512](https://etherscan.io/address/0x8707f238936c12c309bfc2b9959c35828acfc512)
- Role: `OWNER`
- Authority holder: [0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862](https://etherscan.io/address/0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862)
- Control class: `5/10`
- Nested Safe: `❌`
- Funds moved in proof: `$8.2M`
- Execution class: `Atomic`

## Authority Path

`rescueTokens`

## Local-Fork Evidence

Bounded atomic PoC: EthenaLPStaking owner can atomically rescue current invariant slack (~3.65K USDe) to an arbitrary recipient. Full-balance rescue still reverts and the $8.26M user-staked balance is not sweepable through this path.

### Executed Steps

- `rescueTokens`; sender `0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862`; moved $3.7K

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
