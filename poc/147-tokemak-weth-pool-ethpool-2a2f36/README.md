# Tokemak: WETH Pool / EthPool

## Summary

- Protocol: `Tokemak: WETH Pool`
- Contract name: `EthPool`
- Contract: [0xd3d13a578a53685b4ac36a1bab31912d2b2a2f36](https://etherscan.io/address/0xd3d13a578a53685b4ac36a1bab31912d2b2a2f36)
- Role: `PROXY_ADMIN_OWNER`
- Authority holder: [0xa9900b2d550c406d1cf58da27228feeef21d447b](https://etherscan.io/address/0xa9900b2d550c406d1cf58da27228feeef21d447b)
- Control class: `6/14`
- Nested Safe: `❌`
- Funds moved in proof: `$581.8K`
- Execution class: `Multi-tx`

## Authority Path

`ProxyAdmin.upgrade(replacement implementation) -> drainErc20`

## Local-Fork Evidence

Implementation OWNER pause is only liveness control; full-stack ProxyAdmin owner can upgrade proxy to malicious implementation and drain WETH. local fork confirms WETH movement.

### Executed Steps

- `ProxyAdmin.upgrade(drainer)`; sender `0xa9900b2d550c406d1cf58da27228feeef21d447b`
- `_drainErc20(WETH)`; sender `0xdead0000000000000000000000000000deadbeef`; moved $586.6K

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

