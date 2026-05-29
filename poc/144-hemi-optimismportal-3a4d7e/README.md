# Hemi / OptimismPortal

## Summary

- Protocol: `Hemi`
- Contract name: `OptimismPortal`
- Contract: [0x39a0005415256b9863afe2d55edcf75ecc3a4d7e](https://etherscan.io/address/0x39a0005415256b9863afe2d55edcf75ecc3a4d7e)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x8434dc705e4b729405dd66c94dfc62bc3825ea69](https://etherscan.io/address/0x8434dc705e4b729405dd66c94dfc62bc3825ea69)
- Control class: `3/8`
- Nested Safe: `❌`
- Funds moved in proof: `$607.6K`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainEth -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x8434dc705e4b729405dd66c94dfc62bc3825ea69`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

