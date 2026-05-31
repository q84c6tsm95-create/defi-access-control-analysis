# Optimism USDC Bridge Adapter / L1OpUSDCBridgeAdapter

## Summary

- Protocol: `Optimism USDC Bridge Adapter`
- Contract name: `L1OpUSDCBridgeAdapter`
- Contract: [0xc67a8c5f22b40274ca7c4a56db89569ee2ad3fab](https://etherscan.io/address/0xc67a8c5f22b40274ca7c4a56db89569ee2ad3fab)
- Role: `OWNER`
- Authority holder: [0xe7c9a9dddab8a384c38d721de64e4222fe76df75](https://etherscan.io/address/0xe7c9a9dddab8a384c38d721de64e4222fe76df75)
- Control class: `2/4`
- Nested Safe: `❌`
- Funds moved in proof: `$2.6M`
- Execution class: `Multi-tx`

## Authority Path

`upgradeToAndCall -> drainErc20`

## Local-Fork Evidence

Local-fork execution evidence is present for this publication row.

### Executed Steps

- `upgradeToAndCall`; sender `0xe7c9a9dddab8a384c38d721de64e4222fe76df75`
- `_drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`; moved $5.7M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
