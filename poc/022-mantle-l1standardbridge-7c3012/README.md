# Mantle / L1StandardBridge

## Summary

- Protocol: `Mantle`
- Contract name: `L1StandardBridge`
- Contract: [0x95fc37a27a2f68e3a647cdc081f0a89bb47c3012](https://etherscan.io/address/0x95fc37a27a2f68e3a647cdc081f0a89bb47c3012)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x4e59e778a0fb77fbb305637435c62faed9aed40f](https://etherscan.io/address/0x4e59e778a0fb77fbb305637435c62faed9aed40f)
- Control class: `6/14`
- Nested Safe: `❌`
- Funds moved in proof: `$66.9M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x4e59e778a0fb77fbb305637435c62faed9aed40f`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

