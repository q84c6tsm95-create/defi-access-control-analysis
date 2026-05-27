# Gnosis Chain / ForeignOmnibridge

## Summary

- Protocol: `Gnosis Chain`
- Contract name: `ForeignOmnibridge`
- Contract: [0x88ad09518695c6c3712ac10a214be5109a655671](https://etherscan.io/address/0x88ad09518695c6c3712ac10a214be5109a655671)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x42f38ec5a75accec50054671233dfac9c0e7a3f6](https://etherscan.io/address/0x42f38ec5a75accec50054671233dfac9c0e7a3f6)
- Control class: `8/15`
- Nested Safe: `✅ (2/3)`
- Funds moved in proof: `$73.5M`
- Execution class: `Multi-tx`

## Authority Path

`upgradeTo -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT validiums/others follow-up PoC verified on local fork.

### Executed Steps

- `upgradeTo`; sender `0x42f38ec5a75accec50054671233dfac9c0e7a3f6`
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

