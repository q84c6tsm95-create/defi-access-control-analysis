# Hyperlane / HypERC20Collateral

## Summary

- Protocol: `Hyperlane`
- Contract name: `HypERC20Collateral`
- Contract: [0xd05909852ae07118857f9d071781671d12c0f36c](https://etherscan.io/address/0xd05909852ae07118857f9d071781671d12c0f36c)
- Role: `OWNER`
- Authority holder: [0xc6428d25ded7520265a9e9c48daef3a5680c7620](https://etherscan.io/address/0xc6428d25ded7520265a9e9c48daef3a5680c7620)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$3.9M`
- Execution class: `Multi-tx`

## Authority Path

`enrollRemoteRouter -> handle`

## Local-Fork Evidence

Corrected from stale setRecipient path. Owner enrolls an attacker remote router, then Hyperlane Mailbox handle(99999, attackerRouter, TokenMessage(attacker, liveBalance)) transfers HypERC20Collateral-held USDC to attacker.

### Executed Steps

- `enrollRemoteRouter`; sender `0xc6428d25ded7520265a9e9c48daef3a5680c7620`
- `handle`; sender `0xc005dc82818d67af737725bd4bf75435d065d239`; moved $4.3M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
