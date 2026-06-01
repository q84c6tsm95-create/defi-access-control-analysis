# zkLink Nova / EthereumL1ERC20Bridge

## Summary

- Protocol: `zkLink Nova`
- Contract name: `EthereumL1ERC20Bridge`
- Contract: [0xad16edcf7deb7e90096a259c81269d811544b6b6](https://etherscan.io/address/0xad16edcf7deb7e90096a259c81269d811544b6b6)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0xdb4d755e3b8735314147b9bb146327c269701e2d](https://etherscan.io/address/0xdb4d755e3b8735314147b9bb146327c269701e2d)
- Control class: `5/8`
- Nested Safe: `❌`
- Funds moved in proof: `$1.3M`
- Execution class: `Multi-tx`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0xdb4d755e3b8735314147b9bb146327c269701e2d`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
