# Hyperlane / HyperlaneTokenBridge

## Summary

- Protocol: `Hyperlane`
- Contract name: `HyperlaneTokenBridge`
- Contract: [0x8932fe7726c1ee743f662f485c3e5a5d1d595f71](https://etherscan.io/address/0x8932fe7726c1ee743f662f485c3e5a5d1d595f71)
- Role: `OWNER`
- Authority holder: [0x73d7297753f47414a436c1b4123c5113917a496d](https://etherscan.io/address/0x73d7297753f47414a436c1b4123c5113917a496d)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$18.3M`
- Execution class: `Atomic`

## Authority Path

`upgradeToAndCall -> drainEth -> drainErc20 -> drainErc20`

## Local-Fork Evidence

Sibling of 0x250b…64f3 (Hyperlane DAI). Same UUPS proxy pattern, same EOA owner 0x73d7…496d. Original record had only step 1; fresh 4-step bundle confirms $16.34M atomic drain (ETH $480K + USDC $404K + DAI $15.46M; USDT $1M dust reverts on old-USDT no-return-value semantics).

### Executed Steps

- `upgradeToAndCall`; sender `0x73d7297753f47414a436c1b4123c5113917a496d`
- `_drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `_drainErc20(USDC)`; sender `0xdead0000000000000000000000000000deadbeef`
- `_drainErc20(DAI)`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
