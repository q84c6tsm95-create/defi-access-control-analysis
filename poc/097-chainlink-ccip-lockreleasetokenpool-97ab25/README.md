# Chainlink CCIP / LockReleaseTokenPool

## Summary

- Protocol: `Chainlink CCIP`
- Contract name: `LockReleaseTokenPool`
- Contract: [0x55e5a21b4ccc7fa502434ab1109d4ede0397ab25](https://etherscan.io/address/0x55e5a21b4ccc7fa502434ab1109d4ede0397ab25)
- Role: `OWNER`
- Authority holder: [0xb9577e83a6d9a6de35047aa066e3758221fe0da2](https://etherscan.io/address/0xb9577e83a6d9a6de35047aa066e3758221fe0da2)
- Control class: `3/6`
- Nested Safe: `❌`
- Funds moved in proof: `$1.8M`
- Execution class: `Atomic`

## Authority Path

`setRebalancer -> withdrawLiquidity`

## Local-Fork Evidence

Scanner row was config-ok (analyzer-picked function is a non-draining setter). Drain confirmed on Tenderly via: LockReleaseTokenPool (CCIP) setRebalancer → rebalance to attacker. See docs/lock_release_token_pool_ccip_setrebalancer_drain_poc.md.

### Executed Steps

- `transferOwnership`; sender `0xb9577e83a6d9a6de35047aa066e3758221fe0da2`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
