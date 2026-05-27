# Eclipse / Treasury

## Summary

- Protocol: `Eclipse`
- Contract name: `Treasury`
- Contract: [0xd7e4b67e735733ac98a88f13d087d8aac670e644](https://etherscan.io/address/0xd7e4b67e735733ac98a88f13d087d8aac670e644)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0x7b2c1cbb33c53c3c6a695e36096ad2cfce1c0efc](https://etherscan.io/address/0x7b2c1cbb33c53c3c6a695e36096ad2cfce1c0efc)
- Control class: `3/5`
- Nested Safe: `✅ (1/2)`
- Funds moved in proof: `$6.2M`
- Execution class: `Multi-tx`

## Authority Path

`grantRole -> emergencyWithdraw`

## Local-Fork Evidence

Local-fork execution evidence is present for this publication row.

### Executed Steps

- `grantRole`; sender `0x7b2c1cbb33c53c3c6a695e36096ad2cfce1c0efc`
- `emergencyWithdraw`; sender `0xdead0000000000000000000000000000deadbeef`; moved $13.0M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
