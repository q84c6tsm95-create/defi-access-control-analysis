# Optimism / L1CrossDomainMessenger

Claim 53 of 160 in the generated publication set.

## Summary

- Protocol: `Optimism`
- Contract name: `L1CrossDomainMessenger`
- Contract: [0xdc71366effa760804dcfc3edf87fa2a6f1623304](https://etherscan.io/address/0xdc71366effa760804dcfc3edf87fa2a6f1623304)
- Role: `OWNER`
- Authority holder: [0xb822319ab7848b7cc4537c8409e50f85bfb04377](https://etherscan.io/address/0xb822319ab7848b7cc4537c8409e50f85bfb04377)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$8.9M`
- Execution class: `Atomic`

## Authority Path

`upgrade -> drainEth`

## Local-Fork Evidence

Original 'setPause' label was scanner-picked config-only. Real drain is via OZ v4 ProxyAdmin.upgrade(messenger, drainer) by the PA owner Safe (0x542675e9...b530), then _drainEth(attacker) takes 4,283 ETH (~$9.16M). Single Safe MultiSend; no rollup-withdrawal-proof path needed; no challenge window applies.

### Executed Steps

- `upgrade`; sender `0x542675e90e269f20ecbb9e0095d4751ac155b530`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
