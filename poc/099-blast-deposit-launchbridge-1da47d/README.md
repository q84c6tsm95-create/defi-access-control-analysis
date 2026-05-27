# Blast: Deposit / LaunchBridge

## Summary

- Protocol: `Blast: Deposit`
- Contract name: `LaunchBridge`
- Contract: [0x5f6ae08b8aeb7078cf2f96afb089d7c9f51da47d](https://etherscan.io/address/0x5f6ae08b8aeb7078cf2f96afb089d7c9f51da47d)
- Role: `OWNER`
- Authority holder: [0x67ca7ca75b69711cfd48b44ec3f64e469baf608c](https://etherscan.io/address/0x67ca7ca75b69711cfd48b44ec3f64e469baf608c)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$1.8M`
- Execution class: `Atomic`

## Authority Path

`upgradeToAndCall(replacement implementation, drainErc20)`

## Local-Fork Evidence

Drain confirmed via LaunchBridge (Blast) UUPS upgrade. See docs/launch_bridge_uups_steth_drain_poc.md.

### Executed Steps

- `upgradeToAndCall(MAL_IMPL, drainErc20(stETH, attacker))`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

