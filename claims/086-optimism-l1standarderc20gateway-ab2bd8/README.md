# Optimism / L1StandardERC20Gateway

Claim 86 of 160 in the generated publication set.

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

`L1CrossDomainMessenger.updateRollup(controlled rollup) -> proveAndRelayMessage → finalizeWithdrawERC20(USDT, amount to controlled recipient) -> proveAndRelayMessage → finalizeWithdrawERC20(WBTC, amount to controlled recipient)`

## Local-Fork Evidence

Scanner row was config-ok (analyzer-picked function is a non-draining setter). Drain confirmed on Tenderly via: L1StandardERC20Gateway (Morph) chained via same-Safe messenger. See docs/l1_standard_erc20_gateway_morph_chained_drain_poc.md.

### Executed Steps

- `L1CrossDomainMessenger.updateRollup(attackerRollup)`; sender `0xb822319ab7848b7cc4537c8409e50f85bfb04377`
- `proveAndRelayMessage → finalizeWithdrawERC20(USDT, 3019660731298 to attacker)`; sender `0xdead0000000000000000000000000000deadbeef`
- `proveAndRelayMessage → finalizeWithdrawERC20(WBTC, 16524530 to attacker)`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
