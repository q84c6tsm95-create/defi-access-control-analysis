# Nucleus: tETH Token / BoringVault

## Summary

- Protocol: `Nucleus: tETH Token`
- Contract name: `BoringVault`
- Contract: [0x19e099b7aed41fa52718d780dda74678113c0b32](https://etherscan.io/address/0x19e099b7aed41fa52718d780dda74678113c0b32)
- Role: `OWNER`
- Authority holder: [0x0000000000417626ef34d62c4dc189b021603f2f](https://etherscan.io/address/0x0000000000417626ef34d62c4dc189b021603f2f)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$749.7K`
- Execution class: `Atomic`

## Authority Path

`manage_transfer_WETH`

## Local-Fork Evidence

Manual >$500k review: privileged single-call path executed and transferred $771,053 WETH to the attacker.

### Executed Steps

- `manage_transfer_WETH`; sender `0x0000000000417626ef34d62c4dc189b021603f2f`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
