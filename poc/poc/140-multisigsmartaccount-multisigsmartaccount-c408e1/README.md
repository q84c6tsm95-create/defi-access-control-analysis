# MultiSigSmartAccount / MultiSigSmartAccount

## Summary

- Protocol: `MultiSigSmartAccount`
- Contract name: `MultiSigSmartAccount`
- Contract: [0x22580e995c8bc686d56a1f12825f7eab01c408e1](https://etherscan.io/address/0x22580e995c8bc686d56a1f12825f7eab01c408e1)
- Role: `OWNER_ROLE`
- Authority holder: [0xce04349557204d02fc95a98cb21146755fd2645f](https://etherscan.io/address/0xce04349557204d02fc95a98cb21146755fd2645f)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$712.9K`
- Execution class: `Atomic`

## Authority Path

`execute(USDC.transfer)`

## Local-Fork Evidence

Existing OWNER_ROLE holder can directly call execute with USDC.transfer(attacker, balance), moving the smart account USDC balance.

### Executed Steps

- `execute(USDC.transfer)`; sender `0xce04349557204d02fc95a98cb21146755fd2645f`; moved $424.3K

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
