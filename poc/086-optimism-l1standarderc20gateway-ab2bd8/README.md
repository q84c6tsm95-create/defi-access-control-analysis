# Optimism / L1StandardERC20Gateway

## Summary

- Protocol: `Optimism`
- Contract name: `L1StandardERC20Gateway`
- Contract: [0x44c28f61a5c2dd24fc71d7df8e85e18af4ab2bd8](https://etherscan.io/address/0x44c28f61a5c2dd24fc71d7df8e85e18af4ab2bd8)
- Role: `OWNER`
- Authority holder: [0xb822319ab7848b7cc4537c8409e50f85bfb04377](https://etherscan.io/address/0xb822319ab7848b7cc4537c8409e50f85bfb04377)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$3.0M`
- Execution class: `Atomic`

## Authority Path

`updateRollup(controlled rollup) -> proveAndRelayMessage(finalizeWithdrawERC20 0xdac17f958d2ee523a2206206994597c13d831ec7) -> proveAndRelayMessage(finalizeWithdrawERC20 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599)`

## Local-Fork Evidence

Scanner row was config-ok (analyzer-picked function is a non-draining setter). Drain reproduced on the local fork via: L1StandardERC20Gateway (Morph) chained via same-Safe messenger. See docs/l1_standard_erc20_gateway_morph_chained_drain_poc.md.

### Executed Steps

- `updateRollup(attackerRollup)`; sender `0xb822319ab7848b7cc4537c8409e50f85bfb04377`
- `proveAndRelayMessage(finalizeWithdrawERC20 0xdac17f958d2ee523a2206206994597c13d831ec7)`; sender `0xdead0000000000000000000000000000deadbeef`
- `proveAndRelayMessage(finalizeWithdrawERC20 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599)`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

