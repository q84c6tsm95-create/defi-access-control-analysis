# Opyn (Gamma Protocol) / MarginPool

## Summary

- Protocol: `Opyn (Gamma Protocol)`
- Contract name: `MarginPool`
- Contract: [0x5934807cc0654d46755ebd2848840b616256c6ef](https://etherscan.io/address/0x5934807cc0654d46755ebd2848840b616256c6ef)
- Role: `OWNER`
- Authority holder: [0x638e5da0eebba58c67567bceb4ab2dc8d34853fb](https://etherscan.io/address/0x638e5da0eebba58c67567bceb4ab2dc8d34853fb)
- Control class: `2/4`
- Nested Safe: `❌`
- Funds moved in proof: `$901.3K`
- Execution class: `Atomic`

## Authority Path

`setController -> transferToUser -> transferToUser`

## Local-Fork Evidence

Opyn Safe v1.1.1 (2/4 multisig) 0x638e5da0… is owner of both MarginPool and AddressBook. AddressBook.setController(maliciousImpl) → upgradeTo on Controller proxy → malicious impl calls MarginPool.transferToUser(token, attacker, balance) (msg.sender stays = Controller proxy). Live Tenderly: $903,693 (WETH + WBTC) drained. See docs/opyn_marginpool_addressbook_controller_swap_drain_poc.md.

### Executed Steps

- `setController`; sender `0x638e5da0eebba58c67567bceb4ab2dc8d34853fb`
- `transferToUser`; sender `0xdead0000000000000000000000000000deadbeef`
- `transferToUser`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
