# Quantfury Data Token / QDT

Claim 133 of 160 in the generated publication set.

## Summary

- Protocol: `Quantfury Data Token`
- Contract name: `QDT`
- Contract: [0xd18475521245a127a933a4fcaf99e8c45a416f7e](https://etherscan.io/address/0xd18475521245a127a933a4fcaf99e8c45a416f7e)
- Role: `OWNER`
- Authority holder: [0x79eb80d95da726f628b630839c256602a2acaf2e](https://etherscan.io/address/0x79eb80d95da726f628b630839c256602a2acaf2e)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$834.4K`
- Execution class: `Atomic`

## Authority Path

`withdraw`

## Local-Fork Evidence

Corrected config-ok: full-amount withdraw(attacker, 405292050035529229343) succeeds on Tenderly and transfers 405.292050035529229343 ETH from QDT to attacker. The earlier automated sim used a dust amount.

### Executed Steps

- `withdraw`; sender `0x79eb80d95da726f628b630839c256602a2acaf2e`; moved $860.9K

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
