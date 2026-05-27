# Blast: ETH Yield Manager Proxy / ETHYieldManager

## Summary

- Protocol: `Blast: ETH Yield Manager Proxy`
- Contract name: `ETHYieldManager`
- Contract: [0x98078db053902644191f93988341e31289e1c8fe](https://etherscan.io/address/0x98078db053902644191f93988341e31289e1c8fe)
- Role: `OWNER`
- Authority holder: [0x4f72ee94b8ba3be7f886565d3583a7f636c58b05](https://etherscan.io/address/0x4f72ee94b8ba3be7f886565d3583a7f636c58b05)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$40.9M`
- Execution class: `Multi-tx`

## Authority Path

`setAdmin -> addProvider -> stake_replacement_provider`

## Local-Fork Evidence

Local-fork execution evidence is present for this publication row.

### Executed Steps

- `setAdmin`; sender `0x4f72ee94b8ba3be7f886565d3583a7f636c58b05`
- `addProvider`; sender `0x4f72ee94b8ba3be7f886565d3583a7f636c58b05`
- `stake_malicious_provider`; sender `0xdead0000000000000000000000000000deadbeef`; moved $79.1M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

