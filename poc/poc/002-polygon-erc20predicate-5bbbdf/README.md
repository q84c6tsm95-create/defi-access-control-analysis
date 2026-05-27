# Polygon / ERC20Predicate

## Summary

- Protocol: `Polygon`
- Contract name: `ERC20Predicate`
- Contract: [0x40ec5b33f54e0e8a33a975908c5ba1c14e5bbbdf](https://etherscan.io/address/0x40ec5b33f54e0e8a33a975908c5ba1c14e5bbbdf)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0xfa7d2a996ac6350f4b56c043112da0366a59b74c](https://etherscan.io/address/0xfa7d2a996ac6350f4b56c043112da0366a59b74c)
- Control class: `5/9`
- Nested Safe: `✅ (2/5, 2/5)`
- Funds moved in proof: `$2.00B`
- Execution class: `Multi-tx`

## Authority Path

`grantRole -> migrateTokens`

## Local-Fork Evidence

Local-fork execution evidence is present for this publication row.

### Executed Steps

- `grantRole`; sender `0xfa7d2a996ac6350f4b56c043112da0366a59b74c`
- `migrateTokens`; sender `0xdead0000000000000000000000000000deadbeef`; moved $1.08B

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
