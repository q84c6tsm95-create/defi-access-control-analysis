# Bob / OptimismPortal2

Claim 106 of 160 in the generated publication set.

## Summary

- Protocol: `Bob`
- Contract name: `OptimismPortal2`
- Contract: [0x8adee124447435fe03e3cd24df3f4cae32e65a3e](https://etherscan.io/address/0x8adee124447435fe03e3cd24df3f4cae32e65a3e)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0xc91482a96e9c2a104d9298d1980eccf8c4dc764e](https://etherscan.io/address/0xc91482a96e9c2a104d9298d1980eccf8c4dc764e)
- Control class: `4/6`
- Nested Safe: `❌`
- Funds moved in proof: `$1.5M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainEth -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0xc91482a96e9c2a104d9298d1980eccf8c4dc764e`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
