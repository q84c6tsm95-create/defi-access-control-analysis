# Gnosis Chain / XDaiForeignBridge

Claim 19 of 160 in the generated publication set.

## Summary

- Protocol: `Gnosis Chain`
- Contract name: `XDaiForeignBridge`
- Contract: [0x4aa42145aa6ebf72e164c9bbc74fbd3788045016](https://etherscan.io/address/0x4aa42145aa6ebf72e164c9bbc74fbd3788045016)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x42f38ec5a75accec50054671233dfac9c0e7a3f6](https://etherscan.io/address/0x42f38ec5a75accec50054671233dfac9c0e7a3f6)
- Control class: `8/15`
- Nested Safe: `✅ (2/3)`
- Funds moved in proof: `$84.8M`
- Execution class: `Multi-tx`

## Authority Path

`upgradeTo -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

L2BEAT validiums/others follow-up PoC verified on local fork.

### Executed Steps

- `upgradeTo`; sender `0x42f38ec5a75accec50054671233dfac9c0e7a3f6`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
