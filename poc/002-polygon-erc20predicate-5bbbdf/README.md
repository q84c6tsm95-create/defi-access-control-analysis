# Polygon / ERC20Predicate

## Summary

- Protocol: `Polygon`
- Contract name: `ERC20Predicate`
- Contract: [0x40ec5b33f54e0e8a33a975908c5ba1c14e5bbbdf](https://etherscan.io/address/0x40ec5b33f54e0e8a33a975908c5ba1c14e5bbbdf)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0xfa7d2a996ac6350f4b56c043112da0366a59b74c](https://etherscan.io/address/0xfa7d2a996ac6350f4b56c043112da0366a59b74c)
- Control class: `5/9`
- Nested Safe: `✅ (2/5, 2/5)`
- Funds moved in proof: `$2.00B`
- Execution class: `Multi-tx`

## Authority Path

`grantRole -> migrateTokens`

## Local-Fork Evidence

Local-fork execution evidence is present for this publication row.

### Executed Steps

- `grantRole`; sender `0xfa7d2a996ac6350f4b56c043112da0366a59b74c`
- `migrateTokens`; sender `0xdead0000000000000000000000000000deadbeef`; moved $1.08B

### Multi-Asset Sweep

The same authority path was replayed for each listed token balance using `migrateTokens(token, token.transfer(attacker, balance))` after the `MANAGER_ROLE` grant.

- `USDC`; moved $1.08B
- `DAI`; moved $762.2M; proof https://dashboard.tenderly.co/syf/project/simulator/35548c03-b917-47a1-918c-231b70827a99
- `WBTC`; moved $154.0M; proof https://dashboard.tenderly.co/syf/project/simulator/acdf5a7f-cdc9-4cfd-a6a7-1268d58cc502
- `USDT`; moved $8.0M; proof https://dashboard.tenderly.co/syf/project/simulator/251eaf0e-53bf-438d-97cc-944cfa408610
- `wstETH`; moved $14.1M; proof https://dashboard.tenderly.co/syf/project/simulator/1db271a1-bb64-4843-9203-c28218026068

Combined verified multi-asset movement: `$2.02B`


## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
