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
- Execution class: `Atomic`

## Authority Path

`setProofVerifier -> claimFor`

## Local-Fork Evidence

Scanner row was config-ok (analyzer-picked function is a non-draining setter). Drain confirmed on Tenderly via: TokenDeposit (Sonic) setProofVerifier → forged exit proof. See docs/token_deposit_sonic_setproofverifier_drain_poc.md.

### Executed Steps

- `setProofVerifier`; sender `0x9fe65a5418850015a9d8ad3ca50d6a0b9769fbe0`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

