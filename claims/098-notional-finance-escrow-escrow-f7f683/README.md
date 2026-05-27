# Notional Finance: Escrow / Escrow

Claim 98 of 160 in the generated publication set.

## Summary

- Protocol: `Notional Finance: Escrow`
- Contract name: `Escrow`
- Contract: [0x9abd0b8868546105f6f48298eadc1d9c82f7f683](https://etherscan.io/address/0x9abd0b8868546105f6f48298eadc1d9c82f7f683)
- Role: `OWNER`
- Authority holder: [0x22341fb5d92d3d801144aa5a925f401a91418a05](https://etherscan.io/address/0x22341fb5d92d3d801144aa5a925f401a91418a05)
- Control class: `3/5`
- Nested Safe: `✅ (1/2)`
- Funds moved in proof: `$1.8M`
- Execution class: `Atomic`

## Authority Path

`PA.upgrade -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

Notional V1 Escrow TUP. Recorded step 1 reverted (probably stale PA ABI). Fresh 2026-05-19 bundle via OZ v4 ProxyAdmin.upgrade(proxy, drainer) by Safe 3/5 0x22341fb5…05 confirms atomic drain: USDC $1.66M + WETH $54K + DAI $68K + WBTC $385.

### Executed Steps

- `PA.upgrade`; sender `0x22341fb5d92d3d801144aa5a925f401a91418a05`
- `_drainErc20(USDC)`; sender `0xdead0000000000000000000000000000deadbeef`
- `_drainErc20(WETH)`; sender `0xdead0000000000000000000000000000deadbeef`
- `_drainErc20(DAI)`; sender `0xdead0000000000000000000000000000deadbeef`
- `_drainErc20(WBTC)`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
