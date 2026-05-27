# Symbiotic / Vault

## Summary

- Protocol: `Symbiotic`
- Contract name: `Vault`
- Contract: [0xd4e20eca1f996dab35883dc0ad5e3428af888d45](https://etherscan.io/address/0xd4e20eca1f996dab35883dc0ad5e3428af888d45)
- Role: `OWNER`
- Authority holder: [0x2aca71020de61bb532008049e1bd41e451ae8adc](https://etherscan.io/address/0x2aca71020de61bb532008049e1bd41e451ae8adc)
- Control class: `4/7`
- Nested Safe: `❌`
- Funds moved in proof: `$38.0M`
- Execution class: `Multi-tx`

## Authority Path

`registerNetwork -> registerOperator -> setMiddleware(controlled recipient) -> optIn(vault) -> optIn(network) -> setMaxNetworkLimit -> setNetworkLimit -> setOperatorNetworkShares -> setGlobalReceiver(controlled recipient) -> acceptGlobalReceiver -> requestSlash -> executeSlash -> triggerTransfer(controlled recipient)`

## Local-Fork Evidence

Vault impl is config-only, but the same admin Safe also owns the BurnerRouter and admins the Delegator. Real full-stack drain confirmed on Tenderly via registerNetwork/registerOperator -> setMiddleware -> opt-ins -> setMaxNetworkLimit -> setNetworkLimit -> setOperatorNetworkShares -> setGlobalReceiver -> acceptGlobalReceiver -> requestSlash -> executeSlash -> triggerTransfer. See docs/symbiotic_kiln_full_stack_drain_poc.md.

### Executed Steps

- `registerNetwork`
- `registerOperator`
- `setMiddleware(attacker)`
- `optIn(vault)`
- `optIn(network)`
- `setMaxNetworkLimit`
- `setNetworkLimit`
- `setOperatorNetworkShares`
- `setGlobalReceiver(attacker)`
- `acceptGlobalReceiver`
- `requestSlash`
- `executeSlash`; moved $38.6M
- `triggerTransfer(attacker)`; moved $38.6M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
