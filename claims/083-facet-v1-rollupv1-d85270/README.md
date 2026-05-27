# Facet v1 / RollupV1

Claim 83 of 160 in the generated publication set.

## Summary

- Protocol: `Facet v1`
- Contract name: `RollupV1`
- Contract: [0x367c1eaf14aa06b78ce76bd0243297de79d85270](https://etherscan.io/address/0x367c1eaf14aa06b78ce76bd0243297de79d85270)
- Role: `OWNER`
- Authority holder: [0x230dfb03f078b0d5e705f4624fcc915f3126b40f](https://etherscan.io/address/0x230dfb03f078b0d5e705f4624fcc915f3126b40f)
- Control class: `2/4`
- Nested Safe: `❌`
- Funds moved in proof: `$3.5M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgradeAndCall -> drainErc20`

## Local-Fork Evidence

Scanner row was config-ok (analyzer-picked function is a non-draining setter). Drain confirmed on Tenderly via: RollupV1 ProxyAdmin upgrade. See docs/rollup_v1_proxyadmin_drain_poc.md.

### Executed Steps

- `setRoot`; sender `0x230dfb03f078b0d5e705f4624fcc915f3126b40f`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
