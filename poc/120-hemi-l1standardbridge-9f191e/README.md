# Hemi / L1StandardBridge

## Summary

- Protocol: `Hemi`
- Contract name: `L1StandardBridge`
- Contract: [0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e](https://etherscan.io/address/0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x8434dc705e4b729405dd66c94dfc62bc3825ea69](https://etherscan.io/address/0x8434dc705e4b729405dd66c94dfc62bc3825ea69)
- Control class: `3/8`
- Nested Safe: `❌`
- Funds moved in proof: `$676.4K`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x8434dc705e4b729405dd66c94dfc62bc3825ea69`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
