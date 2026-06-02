# Linea Bridge / LineaRollup

## Summary

- Protocol: `Linea Bridge`
- Contract name: `LineaRollup`
- Contract: [0xd19d4b5d358258f05d7b411e21a1460d11b0876f](https://etherscan.io/address/0xd19d4b5d358258f05d7b411e21a1460d11b0876f)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0x892bb7eed71efb060ab90140e7825d8127991dd3](https://etherscan.io/address/0x892bb7eed71efb060ab90140e7825d8127991dd3)
- Control class: `5/9`
- Nested Safe: `✅ (1/4)`
- Funds moved in proof: `$128.8M`
- Execution class: `Multi-tx`

## Authority Path

`grantRole_SET_YIELD_MANAGER_ROLE -> setYieldManager -> grantRole_YIELD_PROVIDER_STAKING_ROLE -> transferFundsForNativeYield`

## Local-Fork Evidence

Local-fork execution evidence is present for this publication row.

### Executed Steps

- `grantRole_SET_YIELD_MANAGER_ROLE`; sender `0x892bb7eed71efb060ab90140e7825d8127991dd3`
- `setYieldManager`; sender `0xdead0000000000000000000000000000deadbeef`
- `grantRole_YIELD_PROVIDER_STAKING_ROLE`; sender `0x892bb7eed71efb060ab90140e7825d8127991dd3`
- `transferFundsForNativeYield`; sender `0xdead0000000000000000000000000000deadbeef`; moved $255.8M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
