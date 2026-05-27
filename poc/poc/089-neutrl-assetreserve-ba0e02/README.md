# Neutrl / AssetReserve

## Summary

- Protocol: `Neutrl`
- Contract name: `AssetReserve`
- Contract: [0x16c2c5ab7c5a94a733be90160c01663b7bba0e02](https://etherscan.io/address/0x16c2c5ab7c5a94a733be90160c01663b7bba0e02)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0x51de41ec06e779715d7fb71ef83a736cfc903217](https://etherscan.io/address/0x51de41ec06e779715d7fb71ef83a736cfc903217)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$2.4M`
- Execution class: `Atomic`

## Authority Path

`setCustodian -> grantRole -> transferToCustodian`

## Local-Fork Evidence

Corrected from stale transferAdmin config row. DEFAULT_ADMIN_ROLE can call setCustodian(attacker, true), grant AUTHORIZED_ROLE to attacker, and the attacker can call transferToCustodian(attacker, USDC, fullBalance). Tenderly confirms 1,007,233.652429 USDC move to attacker.

### Executed Steps

- `setCustodian`; sender `0x51de41ec06e779715d7fb71ef83a736cfc903217`
- `grantRole`; sender `0x51de41ec06e779715d7fb71ef83a736cfc903217`
- `transferToCustodian`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
