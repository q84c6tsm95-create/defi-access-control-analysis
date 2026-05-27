# Hyperlane / HyperlaneTokenBridge

## Summary

- Protocol: `Hyperlane`
- Contract name: `HyperlaneTokenBridge`
- Contract: [0x250ba4e73a365cefdd170a2b1ff9fc03097d64f3](https://etherscan.io/address/0x250ba4e73a365cefdd170a2b1ff9fc03097d64f3)
- Role: `OWNER`
- Authority holder: [0x73d7297753f47414a436c1b4123c5113917a496d](https://etherscan.io/address/0x73d7297753f47414a436c1b4123c5113917a496d)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$155.0M`
- Execution class: `Atomic`

## Authority Path

`upgradeToAndCall -> drainErc20`

## Local-Fork Evidence

Original sim recorded only step 1 (upgradeToAndCall). Fresh 2-step bundle on 2026-05-19 confirms full $154.9M DAI drain. Owner is EOA 0x73d72977...496d; UUPS proxy via proxy.upgradeToAndCall + drainer.

### Executed Steps

- `upgradeToAndCall`; sender `0x73d7297753f47414a436c1b4123c5113917a496d`
- `_drainErc20(DAI)`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
