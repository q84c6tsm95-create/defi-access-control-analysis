# Cap Labs / Naturelab / StrategyAAVEV3CoreUSDe

## Summary

- Protocol: `Cap Labs / Naturelab`
- Contract name: `StrategyAAVEV3CoreUSDe`
- Contract: [0x9ffe77146cc1da3edb87af163c6c32bab474b464](https://etherscan.io/address/0x9ffe77146cc1da3edb87af163c6c32bab474b464)
- Role: `OWNER`
- Authority holder: [0x53b36ccbf4a6c5961eb42f0f42fc91d461fd75e1](https://etherscan.io/address/0x53b36ccbf4a6c5961eb42f0f42fc91d461fd75e1)
- Control class: `3/5`
- Nested Safe: `✅ (2/3)`
- Funds moved in proof: `$117.5M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade(strategy, replacement implementation) -> drainErc20`

## Local-Fork Evidence

Reclassified from iterated swap+sendUSDT (DEX-bounded ~$123K/tx). ProxyAdmin 0xb99372e6 is owned by the same 3/5 Safe (0x53b36c...75e1). Atomic drain via PA.upgradeAndCall(strategy, drainer) + strategy._drainErc20(sUSDe, attacker) pulls full 95.4M sUSDe in one Safe MultiSend. See docs/atomicity_audit_2026-05-19.md.

### Executed Steps

- `ProxyAdmin.upgrade(strategy, drainer)`; sender `0x53b36ccbf4a6c5961eb42f0f42fc91d461fd75e1`
- `strategy._drainErc20(sUSDe, attacker)`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
