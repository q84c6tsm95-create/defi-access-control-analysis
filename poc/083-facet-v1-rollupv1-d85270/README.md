# Facet v1 / RollupV1

## Summary

- Protocol: `Facet v1`
- Contract name: `RollupV1`
- Contract: [0x367c1eaf14aa06b78ce76bd0243297de79d85270](https://etherscan.io/address/0x367c1eaf14aa06b78ce76bd0243297de79d85270)
- Role: `OWNER`
- Authority holder: [0x230dfb03f078b0d5e705f4624fcc915f3126b40f](https://etherscan.io/address/0x230dfb03f078b0d5e705f4624fcc915f3126b40f)
- Control class: `2/4`
- Nested Safe: `❌`
- Funds moved in proof: `$3.5M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgradeAndCall -> drainErc20`

## Local-Fork Evidence

Local fork no-shortcut verification uses the actual ProxyAdmin owner path: attacker CREATE-deploys a drainer, the real owner Safe executes ProxyAdmin.upgradeAndCall(proxy, drainer, ""), then the attacker calls drainErc20 to move current USDC.

### Executed Steps

- `ProxyAdmin.upgradeAndCall(proxy, drainer, '')`; sender `0x230dfb03f078b0d5e705f4624fcc915f3126b40f`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`; moved $3.4M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
