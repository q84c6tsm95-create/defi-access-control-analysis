# Optimism USDC Bridge Adapter / L1OpUSDCBridgeAdapter

## Summary

- Protocol: `Optimism USDC Bridge Adapter`
- Contract name: `L1OpUSDCBridgeAdapter`
- Contract: [0xe3622468ea7dd804702b56ca2a4f88c0936995e6](https://etherscan.io/address/0xe3622468ea7dd804702b56ca2a4f88c0936995e6)
- Role: `OWNER`
- Authority holder: [0xd2d7535e099f26ebfba26d96bd1a661d3531d0e9](https://etherscan.io/address/0xd2d7535e099f26ebfba26d96bd1a661d3531d0e9)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$621.1K`
- Execution class: `Multi-tx`

## Authority Path

`upgradeToAndCall -> drainErc20`

## Local-Fork Evidence

Local-fork execution evidence is present for this publication row.

### Executed Steps

- `upgradeToAndCall`; sender `0xd2d7535e099f26ebfba26d96bd1a661d3531d0e9`
- `_drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`; moved $1.3M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

