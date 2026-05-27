# Zircuit / OptimismPortal

## Summary

- Protocol: `Zircuit`
- Contract name: `OptimismPortal`
- Contract: [0x17bfafa932d2e23bd9b909fd5b4d2e2a27043fb1](https://etherscan.io/address/0x17bfafa932d2e23bd9b909fd5b4d2e2a27043fb1)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0xc463eac02572cc964d43d2414023e2c6b62baf38](https://etherscan.io/address/0xc463eac02572cc964d43d2414023e2c6b62baf38)
- Control class: `4/6`
- Nested Safe: `❌`
- Funds moved in proof: `$2.2M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainEth -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0xc463eac02572cc964d43d2414023e2c6b62baf38`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

