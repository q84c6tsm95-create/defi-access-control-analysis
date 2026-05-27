# Miner / Miner

## Summary

- Protocol: `Miner`
- Contract name: `Miner`
- Contract: [0x64356f9e79957fa6d84564fa75f53028799c52de](https://etherscan.io/address/0x64356f9e79957fa6d84564fa75f53028799c52de)
- Role: `OWNER`
- Authority holder: [0x2aaf3e5a559dc5584aa1fefdc1643256c14da841](https://etherscan.io/address/0x2aaf3e5a559dc5584aa1fefdc1643256c14da841)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$509.2K`
- Execution class: `Atomic`

## Authority Path

`updateManger -> withdraw(ETH)`

## Local-Fork Evidence

Corrected from switchPrice config-ok. Owner can set attacker as manager via updateManger; manager can call withdraw(address(0), amount) and receive the contract ETH balance.

### Executed Steps

- `updateManger`; sender `0x2aaf3e5a559dc5584aa1fefdc1643256c14da841`
- `withdraw(ETH)`; sender `0xdead0000000000000000000000000000deadbeef`; moved $521.0K

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
