# Polygon (Matic): Ether Bridge / EtherPredicate

## Summary

- Protocol: `Polygon (Matic): Ether Bridge`
- Contract name: `EtherPredicate`
- Contract: [0x8484ef722627bf18ca5ae6bcf031c23e6e922b30](https://etherscan.io/address/0x8484ef722627bf18ca5ae6bcf031c23e6e922b30)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0xfa7d2a996ac6350f4b56c043112da0366a59b74c](https://etherscan.io/address/0xfa7d2a996ac6350f4b56c043112da0366a59b74c)
- Control class: `5/9`
- Nested Safe: `✅ (2/5, 2/5)`
- Funds moved in proof: `$196.1M`
- Execution class: `Multi-tx`

## Authority Path

`grantRole -> exitTokens`

## Local-Fork Evidence

Local-fork execution evidence is present for this publication row.

### Executed Steps

- `grantRole`; sender `0xfa7d2a996ac6350f4b56c043112da0366a59b74c`
- `exitTokens`; sender `0xdead0000000000000000000000000000deadbeef`; moved $211.7M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
