# Boba Network / OptimismPortal2

Claim 85 of 160 in the generated publication set.

## Summary

- Protocol: `Boba Network`
- Contract name: `OptimismPortal2`
- Contract: [0x7b02d13904d8e6e0f0efaf756ab14cb0ff21ee7e](https://etherscan.io/address/0x7b02d13904d8e6e0f0efaf756ab14cb0ff21ee7e)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x56121a8612474c3eb65d69a3b871f284705b9bc4](https://etherscan.io/address/0x56121a8612474c3eb65d69a3b871f284705b9bc4)
- Control class: `2/3`
- Nested Safe: `❌`
- Funds moved in proof: `$3.0M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainEth -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x56121a8612474c3eb65d69a3b871f284705b9bc4`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
