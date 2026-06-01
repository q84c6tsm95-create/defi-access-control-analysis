# Sonic Labs: Sonic Gateway / TokenDeposit

## Summary

- Protocol: `Sonic Labs: Sonic Gateway`
- Contract name: `TokenDeposit`
- Contract: [0xa1e2481a9cd0cb0447eeb1cbc26f1b3fff3bec20](https://etherscan.io/address/0xa1e2481a9cd0cb0447eeb1cbc26f1b3fff3bec20)
- Role: `OWNER`
- Authority holder: [0x9fe65a5418850015a9d8ad3ca50d6a0b9769fbe0](https://etherscan.io/address/0x9fe65a5418850015a9d8ad3ca50d6a0b9769fbe0)
- Control class: `3/4`
- Nested Safe: `❌`
- Funds moved in proof: `$7.7M`
- Execution class: `Multi-tx`

## Authority Path

`setProofVerifier -> claimFor`

## Local-Fork Evidence

Local fork no-shortcut verification: attacker deploys a no-op proof verifier via CREATE, the real 3/4 owner Safe sets it through execTransaction, then the attacker calls claimFor for current WETH, USDC, and USDT balances. No protocol code or storage override is used. See docs/token_deposit_sonic_setproofverifier_drain_poc.md.

### Executed Steps

- `deploy no-op proof verifier`; sender `0xdead0000000000000000000000000000deadbeef`
- `Safe.execTransaction -> setProofVerifier`; sender `0x9fe65a5418850015a9d8ad3ca50d6a0b9769fbe0`
- `claimFor(WETH)`; sender `0xdead0000000000000000000000000000deadbeef`
- `claimFor(USDC)`; sender `0xdead0000000000000000000000000000deadbeef`
- `claimFor(USDT)`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
