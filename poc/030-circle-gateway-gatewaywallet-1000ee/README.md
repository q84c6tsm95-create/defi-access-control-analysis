# Circle Gateway / GatewayWallet

## Summary

- Protocol: `Circle Gateway`
- Contract name: `GatewayWallet`
- Contract: [0x77777777dcc4d5a8b6e418fd04d8997ef11000ee](https://etherscan.io/address/0x77777777dcc4d5a8b6e418fd04d8997ef11000ee)
- Role: `OWNER`
- Authority holder: [0x2a6a86466f181721ec8ff946967b56f1aa4758c5](https://etherscan.io/address/0x2a6a86466f181721ec8ff946967b56f1aa4758c5)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$34.0M`
- Execution class: `Atomic`

## Authority Path

`upgradeToAndCall -> drainErc20`

## Local-Fork Evidence

Corrected from updatePauser config-ok. Owner-controlled ERC1967/UUPS upgrade installs attacker logic and drains the proxy-held token balance.

### Executed Steps

- `upgradeToAndCall`; sender `0x2a6a86466f181721ec8ff946967b56f1aa4758c5`
- `_drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`; moved $36.1M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

