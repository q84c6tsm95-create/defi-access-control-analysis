# Swell / OptimismPortal2

## Summary

- Protocol: `Swell`
- Contract name: `OptimismPortal2`
- Contract: [0x758e0ee66102816f5c3ec9ecc1188860fbb87812](https://etherscan.io/address/0x758e0ee66102816f5c3ec9ecc1188860fbb87812)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x5a0aae59d09fccbddb6c6cceb07b7279367c3d2a](https://etherscan.io/address/0x5a0aae59d09fccbddb6c6cceb07b7279367c3d2a)
- Control class: `2/2`
- Nested Safe: `✅ (5/7, 10/13)`
- Funds moved in proof: `$1.1M`
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

This folder is generated from the current publication data and local-fork simulation cache.

