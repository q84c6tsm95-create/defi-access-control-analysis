# Rhino.fi: Bridge 2 / DVFDepositContract

## Summary

- Protocol: `Rhino.fi: Bridge 2`
- Contract name: `DVFDepositContract`
- Contract: [0xbca3039a18c0d2f2f84ba8a028c67290bc045afa](https://etherscan.io/address/0xbca3039a18c0d2f2f84ba8a028c67290bc045afa)
- Role: `OWNER`
- Authority holder: [0x520cf70a2d0b3dfb7386a2bc9f800321f62a5c3a](https://etherscan.io/address/0x520cf70a2d0b3dfb7386a2bc9f800321f62a5c3a)
- Control class: `2/3`
- Nested Safe: `❌`
- Funds moved in proof: `$1.3M`
- Execution class: `Atomic`

## Authority Path

`authorize(controlled recipient, true) -> withdrawNativeV2(controlled recipient, 60.56...e18) -> withdrawV2(USDC, controlled recipient, amount) -> withdrawV2(USDT, controlled recipient, amount) -> withdrawV2(WBTC, controlled recipient, amount)`

## Local-Fork Evidence

Drain confirmed via DVF authorize + withdrawV2/withdrawNativeV2. See docs/dvf_deposit_authorize_drain_poc.md.

### Executed Steps

- `authorize(attacker, true)`
- `withdrawNativeV2(attacker, 60.56...e18)`
- `withdrawV2(USDC, attacker, 411457522061)`
- `withdrawV2(USDT, attacker, 291251141596)`
- `withdrawV2(WBTC, attacker, 243737864)`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
