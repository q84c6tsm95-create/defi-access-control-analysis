# Polygon zkEVM L1Escrow / L1Escrow

## Summary

- Protocol: `Polygon zkEVM L1Escrow`
- Contract name: `L1Escrow`
- Contract: [0xfe3240995c771f10d2583e8fa95f92ee40e15150](https://etherscan.io/address/0xfe3240995c771f10d2583e8fa95f92ee40e15150)
- Role: `OWNER`
- Authority holder: [0xa07ae4bdfa7ba8bc0e8a8525bcc768300a8970bb](https://etherscan.io/address/0xa07ae4bdfa7ba8bc0e8a8525bcc768300a8970bb)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$9.7M`
- Execution class: `Atomic`

## Authority Path

`upgrade -> drainErc20`

## Local-Fork Evidence

Original 'pause' label was scanner-picked config-only. Real drain is UUPS upgradeTo by EIP-1967 admin EOA (0xa07ae4bd...70bb), then _drainErc20(USDC). Single-EOA single-tx; not a multisig threat model. Current proxy balance is $9.71M USDC (stale $19M scanner snapshot).

### Executed Steps

- `upgrade`; sender `0xa07ae4bdfa7ba8bc0e8a8525bcc768300a8970bb`
- `drainErc20(USDC)`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
