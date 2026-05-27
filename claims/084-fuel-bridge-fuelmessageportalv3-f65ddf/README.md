# Fuel Bridge / FuelMessagePortalV3

Claim 84 of 160 in the generated publication set.

## Summary

- Protocol: `Fuel Bridge`
- Contract name: `FuelMessagePortalV3`
- Contract: [0xaeb0c00d0125a8a788956ade4f4f12ead9f65ddf](https://etherscan.io/address/0xaeb0c00d0125a8a788956ade4f4f12ead9f65ddf)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0x32da601374b38154f05904b16f44a1911aa6f314](https://etherscan.io/address/0x32da601374b38154f05904b16f44a1911aa6f314)
- Control class: `7/10`
- Nested Safe: `✅ (1/2)`
- Funds moved in proof: `$3.3M`
- Execution class: `Multi-tx`

## Authority Path

`upgradeTo -> drainEth`

## Local-Fork Evidence

Scanner row was config-ok (analyzer-picked function is a non-draining setter). Drain confirmed on Tenderly via: FuelMessagePortalV3 UUPS upgrade via DEFAULT_ADMIN_ROLE. See docs/fuel_message_portal_v3_uups_drain_poc.md.

### Executed Steps

- `grantRole`; sender `0x32da601374b38154f05904b16f44a1911aa6f314`
- `resetRateLimitAmount`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
