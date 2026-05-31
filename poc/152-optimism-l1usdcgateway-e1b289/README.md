# Optimism / L1USDCGateway

## Summary

- Protocol: `Optimism`
- Contract name: `L1USDCGateway`
- Contract: [0x2c8314f5aada5d7a9d32eefebfc43accabe1b289](https://etherscan.io/address/0x2c8314f5aada5d7a9d32eefebfc43accabe1b289)
- Role: `PROXY_ADMIN_OWNER`
- Authority holder: [0x542675e90e269f20ecbb9e0095d4751ac155b530](https://etherscan.io/address/0x542675e90e269f20ecbb9e0095d4751ac155b530)
- Control class: `Other`
- Nested Safe: `❌`
- Funds moved in proof: `$544.7K`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20`

## Local-Fork Evidence

Corrected from implementation-owner pauseDeposit config-ok. Transparent proxy admin owner can upgrade the proxy to attacker logic and drain the gateway-held USDC.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x542675e90e269f20ecbb9e0095d4751ac155b530`
- `_drainErc20(USDC)`; sender `0xdead0000000000000000000000000000deadbeef`; moved $544.7K

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
