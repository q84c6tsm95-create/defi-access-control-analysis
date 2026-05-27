# Fraxtal / L1StandardBridge

Claim 18 of 160 in the generated publication set.

## Summary

- Protocol: `Fraxtal`
- Contract name: `L1StandardBridge`
- Contract: [0x34c0bd5877a5ee7099d0f5688d65f4bb9158bde2](https://etherscan.io/address/0x34c0bd5877a5ee7099d0f5688d65f4bb9158bde2)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0xe0d7755252873c4ef5788f7f45764e0e17610508](https://etherscan.io/address/0xe0d7755252873c4ef5788f7f45764e0e17610508)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$104.9M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0xe0d7755252873c4ef5788f7f45764e0e17610508`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
