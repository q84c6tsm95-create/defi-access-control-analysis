# Hyperlane / HypERC20Collateral

Claim 137 of 160 in the generated publication set.

## Summary

- Protocol: `Hyperlane`
- Contract name: `HypERC20Collateral`
- Contract: [0xe78fa49be021e533cd8f6e10931b796d89cd80dd](https://etherscan.io/address/0xe78fa49be021e533cd8f6e10931b796d89cd80dd)
- Role: `OWNER`
- Authority holder: [0x3ea04c1cddebf600da09e6fe0654835f27258f30](https://etherscan.io/address/0x3ea04c1cddebf600da09e6fe0654835f27258f30)
- Control class: `3/4`
- Nested Safe: `❌`
- Funds moved in proof: `$769.9K`
- Execution class: `Multi-tx`

## Authority Path

`enrollRemoteRouter -> handle`

## Local-Fork Evidence

Corrected config-ok: setFeeRecipient is only a setter, but the same owner can enroll a fake Hyperlane remote router, then mailbox handle(99999, attackerRouter, TokenMessage(attacker, 839391657521)) drains the current USDT collateral. Tenderly bundle step 2 transfers 839391.657521 USDT to attacker; earlier failed attempts used stale over-balance 853799885505.

### Executed Steps

- `enrollRemoteRouter`; sender `0x3ea04c1cddebf600da09e6fe0654835f27258f30`
- `handle`; sender `0xc005dc82818d67af737725bd4bf75435d065d239`; moved $838.7K

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
