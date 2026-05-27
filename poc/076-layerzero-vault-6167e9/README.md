# LayerZero / Vault

## Summary

- Protocol: `LayerZero`
- Contract name: `Vault`
- Contract: [0x816f722424b49cf1275cc86da9840fbd5a6167e9](https://etherscan.io/address/0x816f722424b49cf1275cc86da9840fbd5a6167e9)
- Role: `OWNER`
- Authority holder: [0x4e834ca9310d7710a409638a7aa70cb22f141df3](https://etherscan.io/address/0x4e834ca9310d7710a409638a7aa70cb22f141df3)
- Control class: `2/3`
- Nested Safe: `❌`
- Funds moved in proof: `$4.1M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20 -> drainEth`

## Local-Fork Evidence

Scanner row was config-ok (analyzer-picked function is a non-draining setter). Drain confirmed on Tenderly via: Vault 0x816 TUP ProxyAdmin upgrade (same EOA controls both). See docs/vault_816_proxyadmin_multi_drain_poc.md.

### Executed Steps

- `setVaultAdapter`; sender `0x4e834ca9310d7710a409638a7aa70cb22f141df3`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

