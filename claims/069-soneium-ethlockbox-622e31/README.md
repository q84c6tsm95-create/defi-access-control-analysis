# Soneium / ETHLockbox

Claim 69 of 160 in the generated publication set.

## Summary

- Protocol: `Soneium`
- Contract name: `ETHLockbox`
- Contract: [0x67b4de6ffa66ef201ea6099a89ca397d56622e31](https://etherscan.io/address/0x67b4de6ffa66ef201ea6099a89ca397d56622e31)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x5a0aae59d09fccbddb6c6cceb07b7279367c3d2a](https://etherscan.io/address/0x5a0aae59d09fccbddb6c6cceb07b7279367c3d2a)
- Control class: `2/2`
- Nested Safe: `✅ (5/7, 10/13)`
- Funds moved in proof: `$5.4M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainEth -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x5a0aae59d09fccbddb6c6cceb07b7279367c3d2a`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
