# Rayls / RewardVault

## Summary

- Protocol: `Rayls`
- Contract name: `RewardVault`
- Contract: [0xdf06052f307c8e0ec3bd8cba8e448918905721ec](https://etherscan.io/address/0xdf06052f307c8e0ec3bd8cba8e448918905721ec)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0x60f0e09e51704ea6e472f877f849269eede76309](https://etherscan.io/address/0x60f0e09e51704ea6e472f877f849269eede76309)
- Control class: `4/6`
- Nested Safe: `❌`
- Funds moved in proof: `$767.4K`
- Execution class: `Multi-tx`

## Authority Path

`grantRole -> withdrawUSDC`

## Local-Fork Evidence

Local-fork execution evidence is present for this publication row.

### Executed Steps

- `grantRole`; sender `0x60f0e09e51704ea6e472f877f849269eede76309`
- `withdrawUSDC`; sender `0xdead0000000000000000000000000000deadbeef`; moved $990.8K

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
