# Goldfinch / SeniorPool

## Summary

- Protocol: `Goldfinch`
- Contract name: `SeniorPool`
- Contract: [0x8481a6ebaf5c7dabc3f7e09e44a89531fd31f822](https://etherscan.io/address/0x8481a6ebaf5c7dabc3f7e09e44a89531fd31f822)
- Role: `OWNER_ROLE`
- Authority holder: [0xbeb28978b2c755155f20fd3d09cb37e300a6981f](https://etherscan.io/address/0xbeb28978b2c755155f20fd3d09cb37e300a6981f)
- Control class: `6/12`
- Nested Safe: `✅ (2/4)`
- Funds moved in proof: `$1.6M`
- Execution class: `Atomic`

## Authority Path

`upgradeToAndCall(drain USDC)`

## Local-Fork Evidence

Manual >$500k review: EIP173Proxy owner Safe can call upgradeToAndCall(drainer, drain USDC) in one transaction. local fork moved $1,615,464 USDC to the attacker.

### Executed Steps

- `upgradeToAndCall(drain USDC)`; sender `0xbeb28978b2c755155f20fd3d09cb37e300a6981f`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
