# Ethena / EthenaMinting

Claim 23 of 160 in the generated publication set.

## Summary

- Protocol: `Ethena`
- Contract name: `EthenaMinting`
- Contract: [0xe3490297a08d6fc8da46edb7b6142e4f461b62d3](https://etherscan.io/address/0xe3490297a08d6fc8da46edb7b6142e4f461b62d3)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862](https://etherscan.io/address/0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862)
- Control class: `5/10`
- Nested Safe: `❌`
- Funds moved in proof: `$62.1M`
- Execution class: `Atomic`

## Authority Path

`grantRole_COLLATERAL_MANAGER_ROLE -> addCustodianAddress -> transferToCustody_USDT -> transferToCustody_USDC`

## Local-Fork Evidence

Corrected from stale transferAdmin / MINTER_ROLE mint rows. MINTER_ROLE mint requires valid signed benefactor orders and collateral transfer, but DEFAULT_ADMIN_ROLE can grant COLLATERAL_MANAGER_ROLE, add attacker as a custodian, and transfer live USDT/USDC collateral to attacker custody. Tenderly confirms 31,062,433.03877 USDT and 30,600,036.31 USDC move to attacker.

### Executed Steps

- `grantRole_COLLATERAL_MANAGER_ROLE`; sender `0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862`
- `addCustodianAddress`; sender `0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862`
- `transferToCustody_USDT`; sender `0xdead0000000000000000000000000000deadbeef`; moved $62.1M
- `transferToCustody_USDC`; sender `0xdead0000000000000000000000000000deadbeef`; moved $61.2M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
