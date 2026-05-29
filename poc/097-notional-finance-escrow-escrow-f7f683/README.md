# Notional Finance: Escrow / Escrow

## Summary

- Protocol: `Notional Finance: Escrow`
- Contract name: `Escrow`
- Contract: [0x9abd0b8868546105f6f48298eadc1d9c82f7f683](https://etherscan.io/address/0x9abd0b8868546105f6f48298eadc1d9c82f7f683)
- Role: `OWNER`
- Authority holder: [0x22341fb5d92d3d801144aa5a925f401a91418a05](https://etherscan.io/address/0x22341fb5d92d3d801144aa5a925f401a91418a05)
- Control class: `3/5`
- Nested Safe: `✅ (1/2)`
- Funds moved in proof: `$1.8M`
- Execution class: `Multi-tx`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20 -> drainErc20`

## Local-Fork Evidence

Local fork verified: owner Safe upgraded the Notional V1 Escrow proxy through its EIP-1967 ProxyAdmin to an attacker-deployed drainer, then attacker drainErc20 calls moved the current token balances.

### Executed Steps

- `ProxyAdmin.upgrade`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

