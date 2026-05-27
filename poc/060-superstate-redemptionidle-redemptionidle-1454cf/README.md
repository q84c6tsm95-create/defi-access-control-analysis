# Superstate: RedemptionIdle / RedemptionIdle

## Summary

- Protocol: `Superstate: RedemptionIdle`
- Contract name: `RedemptionIdle`
- Contract: [0x4c21b7577c8fe8b0b0669165ee7c8f67fa1454cf](https://etherscan.io/address/0x4c21b7577c8fe8b0b0669165ee7c8f67fa1454cf)
- Role: `OWNER`
- Authority holder: [0x8cf40e96e7d7fd8a7a9bef70d3882fbbc4d40765](https://etherscan.io/address/0x8cf40e96e7d7fd8a7a9bef70d3882fbbc4d40765)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$7.2M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgradeAndCall -> drainErc20`

## Local-Fork Evidence

Scanner row was config-ok (analyzer-picked function is a non-draining setter). Drain confirmed on Tenderly via: RedemptionIdle TUP ProxyAdmin upgrade (same EOA controls both). See docs/redemptionidle_proxyadmin_usdc_drain_poc.md.

### Executed Steps

- `transferOwnership`; sender `0x8cf40e96e7d7fd8a7a9bef70d3882fbbc4d40765`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

