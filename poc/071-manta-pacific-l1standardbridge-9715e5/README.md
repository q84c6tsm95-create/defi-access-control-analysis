# Manta Pacific / L1StandardBridge

## Summary

- Protocol: `Manta Pacific`
- Contract name: `L1StandardBridge`
- Contract: [0x3b95bc951ee0f553ba487327278cac44f29715e5](https://etherscan.io/address/0x3b95bc951ee0f553ba487327278cac44f29715e5)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x3c46c05c2eba8edd0b0f0c8b1d2fbf9fc53ea01e](https://etherscan.io/address/0x3c46c05c2eba8edd0b0f0c8b1d2fbf9fc53ea01e)
- Control class: `5/7`
- Nested Safe: `❌`
- Funds moved in proof: `$5.2M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x3c46c05c2eba8edd0b0f0c8b1d2fbf9fc53ea01e`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

