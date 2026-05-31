# Sxnetwork / ERC20Gateway

## Summary

- Protocol: `Sxnetwork`
- Contract name: `ERC20Gateway`
- Contract: [0xb4968c66becc8fb4f73b50354301c1adb2abaa91](https://etherscan.io/address/0xb4968c66becc8fb4f73b50354301c1adb2abaa91)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0xa4c325e25215c1fb2405eb28d81d2dfdbfc8d24c](https://etherscan.io/address/0xa4c325e25215c1fb2405eb28d81d2dfdbfc8d24c)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$6.4M`
- Execution class: `Multi-tx`

## Authority Path

`UpgradeExecutor.executeCall -> ProxyAdmin.upgrade -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT validiums/others follow-up PoC verified on local fork.

### Executed Steps

- `UpgradeExecutor.executeCall`; sender `0xa4c325e25215c1fb2405eb28d81d2dfdbfc8d24c`
- `ProxyAdmin.upgrade`; sender `0x44ec40d86b4643bd5110ed07be188f8473ad2d3a`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
