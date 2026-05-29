# Socket SuperBridge / Vault

## Summary

- Protocol: `Socket SuperBridge`
- Contract name: `Vault`
- Contract: [0x6d303cee7959f814042d31e0624fb88ec6fbcc1d](https://etherscan.io/address/0x6d303cee7959f814042d31e0624fb88ec6fbcc1d)
- Role: `OWNER`
- Authority holder: [0x169a99b9958386a5d91e732ed08b344946a92391](https://etherscan.io/address/0x169a99b9958386a5d91e732ed08b344946a92391)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$7.2M`
- Execution class: `Atomic`

## Authority Path

`Safe.execTransaction -> rescueFunds`

## Local-Fork Evidence

Local fork no-shortcut verification: the owner Safe executes rescueFunds(USDC, attacker, currentBalance), moving the current Vault USDC balance to the attacker. The previous local fork calldata used a stale amount.

### Executed Steps

- `Safe.execTransaction -> rescueFunds`; sender `0x169a99b9958386a5d91e732ed08b344946a92391`; moved $7.1M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

