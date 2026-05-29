# Shape / OptimismPortal2

## Summary

- Protocol: `Shape`
- Contract name: `OptimismPortal2`
- Contract: [0xeb06ffa16011b5628bab98e29776361c83741dd3](https://etherscan.io/address/0xeb06ffa16011b5628bab98e29776361c83741dd3)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0xa4fb12d15eb85dc9284a7df0adbc8b696edbbf1d](https://etherscan.io/address/0xa4fb12d15eb85dc9284a7df0adbc8b696edbbf1d)
- Control class: `5/8`
- Nested Safe: `❌`
- Funds moved in proof: `$1.0M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainEth -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0xa4fb12d15eb85dc9284a7df0adbc8b696edbbf1d`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

