# Aevo / L1StandardBridge

## Summary

- Protocol: `Aevo`
- Contract name: `L1StandardBridge`
- Contract: [0x4082c9647c098a6493fb499eae63b5ce3259c574](https://etherscan.io/address/0x4082c9647c098a6493fb499eae63b5ce3259c574)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x4a4962275df8c60a80d3a25faec5aa7de116a746](https://etherscan.io/address/0x4a4962275df8c60a80d3a25faec5aa7de116a746)
- Control class: `4/12`
- Nested Safe: `❌`
- Funds moved in proof: `$12.8M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x4a4962275df8c60a80d3a25faec5aa7de116a746`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

