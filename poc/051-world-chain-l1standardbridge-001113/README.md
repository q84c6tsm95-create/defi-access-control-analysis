# World Chain / L1StandardBridge

## Summary

- Protocol: `World Chain`
- Contract name: `L1StandardBridge`
- Contract: [0x470458c91978d2d929704489ad730dc3e3001113](https://etherscan.io/address/0x470458c91978d2d929704489ad730dc3e3001113)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0xa4fb12d15eb85dc9284a7df0adbc8b696edbbf1d](https://etherscan.io/address/0xa4fb12d15eb85dc9284a7df0adbc8b696edbbf1d)
- Control class: `5/8`
- Nested Safe: `❌`
- Funds moved in proof: `$9.6M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0xa4fb12d15eb85dc9284a7df0adbc8b696edbbf1d`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
