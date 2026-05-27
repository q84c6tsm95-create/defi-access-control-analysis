# Metis / L1StandardBridge

## Summary

- Protocol: `Metis`
- Contract name: `L1StandardBridge`
- Contract: [0x3980c9ed79d2c191a89e02fa3529c60ed6e9c04b](https://etherscan.io/address/0x3980c9ed79d2c191a89e02fa3529c60ed6e9c04b)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0xbf1752de62d825af0634f514226f881a449874b6](https://etherscan.io/address/0xbf1752de62d825af0634f514226f881a449874b6)
- Control class: `6/8`
- Nested Safe: `❌`
- Funds moved in proof: `$8.1M`
- Execution class: `Atomic`

## Authority Path

`setCode -> drainEth -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT validiums/others follow-up PoC verified on local fork.

### Executed Steps

- `setCode`; sender `0xbf1752de62d825af0634f514226f881a449874b6`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

