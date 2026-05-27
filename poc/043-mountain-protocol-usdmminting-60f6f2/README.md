# Mountain Protocol / USDmMinting

## Summary

- Protocol: `Mountain Protocol`
- Contract name: `USDmMinting`
- Contract: [0xe0406bee6d58bcd7c1ca78191b6fde9ca060f6f2](https://etherscan.io/address/0xe0406bee6d58bcd7c1ca78191b6fde9ca060f6f2)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0x141c03abc062a9d5d4238e1666b849c929e53cb2](https://etherscan.io/address/0x141c03abc062a9d5d4238e1666b849c929e53cb2)
- Control class: `4/9`
- Nested Safe: `❌`
- Funds moved in proof: `$14.6M`
- Execution class: `Atomic`

## Authority Path

`addCustodianAddress -> grantRole -> transferToCustody`

## Local-Fork Evidence

Corrected from stale transferAdmin / MINTER_ROLE mint rows. MINTER_ROLE mint requires valid signed benefactor orders and collateral transfer, but DEFAULT_ADMIN_ROLE can add attacker as a custodian, grant COLLATERAL_MANAGER_ROLE, and transfer live USDC collateral to attacker custody. Tenderly confirms 15,000,000 USDC move to attacker.

### Executed Steps

- `addCustodianAddress`; sender `0x141c03abc062a9d5d4238e1666b849c929e53cb2`
- `grantRole`; sender `0x141c03abc062a9d5d4238e1666b849c929e53cb2`
- `transferToCustody`; sender `0xdead0000000000000000000000000000deadbeef`; moved $15.0M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
