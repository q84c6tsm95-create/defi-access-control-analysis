# f(x) Protocol / stETHTreasury

Claim 101 of 160 in the generated publication set.

## Summary

- Protocol: `f(x) Protocol`
- Contract name: `stETHTreasury`
- Contract: [0x0e5caa5c889bdf053c9a76395f62267e653afbb0](https://etherscan.io/address/0x0e5caa5c889bdf053c9a76395f62267e653afbb0)
- Role: `OWNER`
- Authority holder: [0x26b2ec4e02ebe2f54583af25b647b1d619e67bbf](https://etherscan.io/address/0x26b2ec4e02ebe2f54583af25b647b1d619e67bbf)
- Control class: `6/9`
- Nested Safe: `❌`
- Funds moved in proof: `$1.7M`
- Execution class: `Multi-tx`

## Authority Path

`updateStrategy(controlled recipient) -> transferToStrategy(805.89e18)`

## Local-Fork Evidence

Drain confirmed via stETHTreasury updateStrategy + transferToStrategy. See docs/steth_treasury_updatestrategy_drain_poc.md.

### Executed Steps

- `updateStrategy(attacker)`
- `transferToStrategy(805.89e18)`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
