# Unichain / L1StandardBridge

## Summary

- Protocol: `Unichain`
- Contract name: `L1StandardBridge`
- Contract: [0x81014f44b0a345033bb2b3b21c7a1a308b35feea](https://etherscan.io/address/0x81014f44b0a345033bb2b3b21c7a1a308b35feea)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x6d5b183f538abb8572f5cd17109c617b994d5833](https://etherscan.io/address/0x6d5b183f538abb8572f5cd17109c617b994d5833)
- Control class: `3/3`
- Nested Safe: `✅ (3/5, 5/7, 10/13)`
- Funds moved in proof: `$1.4M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x6d5b183f538abb8572f5cd17109c617b994d5833`
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
