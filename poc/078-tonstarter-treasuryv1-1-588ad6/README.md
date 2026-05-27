# Tonstarter / TreasuryV1_1

## Summary

- Protocol: `Tonstarter`
- Contract name: `TreasuryV1_1`
- Contract: [0xd27a68a457005f822863199af0f817f672588ad6](https://etherscan.io/address/0xd27a68a457005f822863199af0f817f672588ad6)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0x15280a52e79fd4ab35f4b9acbb376dcd72b44fd1](https://etherscan.io/address/0x15280a52e79fd4ab35f4b9acbb376dcd72b44fd1)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$4.0M`
- Execution class: `Multi-tx`

## Authority Path

`grantRole -> transferProxyAdmin`

## Local-Fork Evidence

Drain confirmed via Tonstarter custom proxy upgradeTo DEFAULT_ADMIN_ROLE EOA, single-key. See docs/tonstarter_treasury_proxy_admin_eth_drain_poc.md.

### Executed Steps

- `grantRole`; sender `0x15280a52e79fd4ab35f4b9acbb376dcd72b44fd1`
- `transferProxyAdmin`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
