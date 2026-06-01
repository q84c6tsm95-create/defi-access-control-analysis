# Boba Network / L1StandardBridge

## Summary

- Protocol: `Boba Network`
- Contract name: `L1StandardBridge`
- Contract: [0xdc1664458d2f0b6090bea60a8793a4e66c2f1c00](https://etherscan.io/address/0xdc1664458d2f0b6090bea60a8793a4e66c2f1c00)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x56121a8612474c3eb65d69a3b871f284705b9bc4](https://etherscan.io/address/0x56121a8612474c3eb65d69a3b871f284705b9bc4)
- Control class: `2/3`
- Nested Safe: `❌`
- Funds moved in proof: `$1.9M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x56121a8612474c3eb65d69a3b871f284705b9bc4`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
