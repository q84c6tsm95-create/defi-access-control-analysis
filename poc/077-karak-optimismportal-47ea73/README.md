# Karak / OptimismPortal

## Summary

- Protocol: `Karak`
- Contract name: `OptimismPortal`
- Contract: [0xeece9cd7abd1cc84d9dfc7493e7e68079e47ea73](https://etherscan.io/address/0xeece9cd7abd1cc84d9dfc7493e7e68079e47ea73)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x28a227d4faf0f4f75897438e24c43ef1cdabb920](https://etherscan.io/address/0x28a227d4faf0f4f75897438e24c43ef1cdabb920)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$4.0M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainEth -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x28a227d4faf0f4f75897438e24c43ef1cdabb920`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

