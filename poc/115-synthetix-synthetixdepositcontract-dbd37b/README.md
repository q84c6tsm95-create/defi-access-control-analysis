# Synthetix / SynthetixDepositContract

## Summary

- Protocol: `Synthetix`
- Contract name: `SynthetixDepositContract`
- Contract: [0xd62595c3c23b690baee0935e107a209cb1dbd37b](https://etherscan.io/address/0xd62595c3c23b690baee0935e107a209cb1dbd37b)
- Role: `OWNER_ROLE`
- Authority holder: [0xeb3107117fead7de89cd14d463d340a2e6917769](https://etherscan.io/address/0xeb3107117fead7de89cd14d463d340a2e6917769)
- Control class: `4/8`
- Nested Safe: `❌`
- Funds moved in proof: `$1.2M`
- Execution class: `Multi-tx`

## Authority Path

`setSLPVault(controlled recipient) -> approveSLPVault(uint256.max) -> USDT.transferFrom(target, controlled recipient, balance)`

## Local-Fork Evidence

Drain confirmed via SynthetixDepositContract setSLPVault + approveSLPVault. See docs/synthetix_deposit_setslpvault_drain_poc.md.

### Executed Steps

- `setSLPVault(attacker)`
- `approveSLPVault(uint256.max)`
- `USDT.transferFrom(target, attacker, balance)`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

