# Symbiosis Finance: Portal / Portal

## Summary

- Protocol: `Symbiosis Finance: Portal`
- Contract name: `Portal`
- Contract: [0xb8f275fbf7a959f4bce59999a2ef122a099e81a8](https://etherscan.io/address/0xb8f275fbf7a959f4bce59999a2ef122a099e81a8)
- Role: `OWNER`
- Authority holder: [0x5112eba9bc2468bb5134cbfbeab9334edae7106a](https://etherscan.io/address/0x5112eba9bc2468bb5134cbfbeab9334edae7106a)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$1.7M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgradeAndCall(proxy, replacement implementation, drainErc20)`

## Local-Fork Evidence

Drain confirmed via Symbiosis Portal ProxyAdmin upgrade. See docs/symbiosis_portal_proxyadmin_drain_poc.md.

### Executed Steps

- `ProxyAdmin.upgradeAndCall(proxy, malImpl, _drainErc20(USDC, attacker))`; sender `0x5112eba9bc2468bb5134cbfbeab9334edae7106a`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
