# Celo / L1StandardBridge

Claim 72 of 160 in the generated publication set.

## Summary

- Protocol: `Celo`
- Contract name: `L1StandardBridge`
- Contract: [0x9c4955b92f34148dbcfdcd82e9c9ece5cf2badfe](https://etherscan.io/address/0x9c4955b92f34148dbcfdcd82e9c9ece5cf2badfe)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x4092a77baf58fef0309452ceacb09221e556e112](https://etherscan.io/address/0x4092a77baf58fef0309452ceacb09221e556e112)
- Control class: `2/2`
- Nested Safe: `✅ (6/8, 6/8)`
- Funds moved in proof: `$4.7M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x4092a77baf58fef0309452ceacb09221e556e112`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
