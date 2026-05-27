# ADEN / GateLayer deposit wallet / ERC1967Proxy

Claim 63 of 160 in the generated publication set.

## Summary

- Protocol: `ADEN / GateLayer deposit wallet`
- Contract name: `ERC1967Proxy`
- Contract: [0x82b6b970711c07fe98fa60c9d80f1be5b9fa32ff](https://etherscan.io/address/0x82b6b970711c07fe98fa60c9d80f1be5b9fa32ff)
- Role: `OWNER`
- Authority holder: [0xedef8023ee40d2587cac244397221f255eb77038](https://etherscan.io/address/0xedef8023ee40d2587cac244397221f255eb77038)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$6.3M`
- Execution class: `Atomic`

## Authority Path

`upgradeToAndCall`

## Local-Fork Evidence

Confirmed atomic UUPS owner-compromise path for ADEN / GateLayer deposit wallet. The proxy has zero EIP-1967 admin/beacon slots, owner() returns the flagged EOA, upgradeTo(address) reverts, but upgradeToAndCall(address,bytes) from the owner succeeds. Tenderly bundle 1c22fcaf-e860-4070-bfb4-875208b7e086 moved the live USDT balance to the attacker in the same transaction.

### Executed Steps

- `upgradeToAndCall`; sender `0xedef8023ee40d2587cac244397221f255eb77038`; moved $6.5M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
