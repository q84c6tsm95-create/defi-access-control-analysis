# Symbiotic / Vault

## Summary

- Protocol: `Symbiotic`
- Contract name: `Vault`
- Contract: [0x4e0554959a631b3d3938ffc158e0a7b2124af9c5](https://etherscan.io/address/0x4e0554959a631b3d3938ffc158e0a7b2124af9c5)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0x8989e3f949df80e8efcbf3372f082699b93e5c09](https://etherscan.io/address/0x8989e3f949df80e8efcbf3372f082699b93e5c09)
- Control class: `2/3`
- Nested Safe: `❌`
- Funds moved in proof: `$1.1M`
- Execution class: `Multi-tx`

## Authority Path

`registerNetwork -> registerOperator -> setMiddleware(controlled recipient) -> optIn(vault) -> optIn(network) -> setMaxNetworkLimit -> setNetworkLimit -> setOperatorNetworkShares -> setGlobalReceiver(controlled recipient) -> acceptGlobalReceiver -> requestSlash -> executeSlash -> triggerTransfer(controlled recipient)`

## Local-Fork Evidence

Vault impl is config-only, but the same admin Safe also owns the BurnerRouter and admins the Delegator. Real full-stack drain confirmed on local fork via registerNetwork/registerOperator -> setMiddleware -> opt-ins -> setMaxNetworkLimit -> setNetworkLimit -> setOperatorNetworkShares -> setGlobalReceiver -> acceptGlobalReceiver -> requestSlash -> executeSlash -> triggerTransfer. See docs/symbiotic_kiln_full_stack_drain_poc.md.

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
- `executeSlash`; moved $414.2K
- `triggerTransfer(attacker)`; moved $414.2K

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
