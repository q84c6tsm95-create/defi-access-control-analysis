# Megaeth / OptimismPortal2

Claim 38 of 160 in the generated publication set.

## Summary

- Protocol: `Megaeth`
- Contract name: `OptimismPortal2`
- Contract: [0x7f82f57f0dd546519324392e408b01fcc7d709e8](https://etherscan.io/address/0x7f82f57f0dd546519324392e408b01fcc7d709e8)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x92e0e0b15e3e99b32c9ed9ad284f939553c7b7d6](https://etherscan.io/address/0x92e0e0b15e3e99b32c9ed9ad284f939553c7b7d6)
- Control class: `6/10`
- Nested Safe: `✅ (1/5)`
- Funds moved in proof: `$17.9M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainEth -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x92e0e0b15e3e99b32c9ed9ad284f939553c7b7d6`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
