# Lisk / L1StandardBridge

## Summary

- Protocol: `Lisk`
- Contract name: `L1StandardBridge`
- Contract: [0x2658723bf70c7667de6b25f99fcce13a16d25d08](https://etherscan.io/address/0x2658723bf70c7667de6b25f99fcce13a16d25d08)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0xecd4150abbb1ebff13f74e42fb43c3d78b4e0b45](https://etherscan.io/address/0xecd4150abbb1ebff13f74e42fb43c3d78b4e0b45)
- Control class: `1/1`
- Nested Safe: `✅ (3/5)`
- Funds moved in proof: `$701.5K`
- Execution class: `Multi-tx`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT validiums/others follow-up PoC verified on local fork.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0xecd4150abbb1ebff13f74e42fb43c3d78b4e0b45`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

