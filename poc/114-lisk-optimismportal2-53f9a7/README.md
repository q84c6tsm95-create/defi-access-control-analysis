# Lisk / OptimismPortal2

## Summary

- Protocol: `Lisk`
- Contract name: `OptimismPortal2`
- Contract: [0x26db93f8b8b4f7016240af62f7730979d353f9a7](https://etherscan.io/address/0x26db93f8b8b4f7016240af62f7730979d353f9a7)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0xecd4150abbb1ebff13f74e42fb43c3d78b4e0b45](https://etherscan.io/address/0xecd4150abbb1ebff13f74e42fb43c3d78b4e0b45)
- Control class: `1/1`
- Nested Safe: `✅ (3/5)`
- Funds moved in proof: `$1.3M`
- Execution class: `Multi-tx`

## Authority Path

`ProxyAdmin.upgrade -> drainEth -> drainErc20`

## Local-Fork Evidence

L2BEAT validiums/others follow-up PoC verified on local fork.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0xecd4150abbb1ebff13f74e42fb43c3d78b4e0b45`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

