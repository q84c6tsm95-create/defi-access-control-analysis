# Optimism / L1CrossDomainMessenger

## Summary

- Protocol: `Optimism`
- Contract name: `L1CrossDomainMessenger`
- Contract: [0xdc71366effa760804dcfc3edf87fa2a6f1623304](https://etherscan.io/address/0xdc71366effa760804dcfc3edf87fa2a6f1623304)
- Role: `OWNER`
- Authority holder: [0xb822319ab7848b7cc4537c8409e50f85bfb04377](https://etherscan.io/address/0xb822319ab7848b7cc4537c8409e50f85bfb04377)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$8.9M`
- Execution class: `Atomic`

## Authority Path

`deploy controlled recipient rollup -> updateRollup -> proveAndRelayMessage`

## Local-Fork Evidence

Original setPause label is config-only. The verified local-fork path uses the listed owner Safe to call updateRollup(attacker-deployed rollup), then the attacker calls proveAndRelayMessage with a nonce-0 zero proof whose root is accepted by the attacker rollup. The messenger sends its ETH balance to the attacker. No protocol code/storage override or endpoint/rollup impersonation is used.

### Executed Steps

- `deploy attacker rollup`; sender `0xdead0000000000000000000000000000deadbeef`
- `updateRollup`; sender `0xb822319ab7848b7cc4537c8409e50f85bfb04377`
- `proveAndRelayMessage`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
