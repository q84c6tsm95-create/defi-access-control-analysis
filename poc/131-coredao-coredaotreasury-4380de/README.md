# CoreDAO / CoreDAOTreasury

## Summary

- Protocol: `CoreDAO`
- Contract name: `CoreDAOTreasury`
- Contract: [0xe508a37101fce81ab412626ee5f1a648244380de](https://etherscan.io/address/0xe508a37101fce81ab412626ee5f1a648244380de)
- Role: `OWNER`
- Authority holder: [0x5a16552f59ea34e44ec81e58b3817833e9fd5436](https://etherscan.io/address/0x5a16552f59ea34e44ec81e58b3817833e9fd5436)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$877.7K`
- Execution class: `Atomic`

## Authority Path

`pay`

## Local-Fork Evidence

Corrected config-ok: pay(DAI, attacker, 877946039919975426518825, "audit") succeeds on Tenderly and transfers 877946.039919975426518825 DAI from CoreDAOTreasury to attacker. The earlier automated sim used the wrong/default asset shape.

### Executed Steps

- `pay`; sender `0x5a16552f59ea34e44ec81e58b3817833e9fd5436`; moved $877.6K

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
