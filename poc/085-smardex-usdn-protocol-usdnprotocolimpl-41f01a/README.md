# SmarDex: USDN Protocol / UsdnProtocolImpl

## Summary

- Protocol: `SmarDex: USDN Protocol`
- Contract name: `UsdnProtocolImpl`
- Contract: [0x656cb8c6d154aad29d8771384089be5b5141f01a](https://etherscan.io/address/0x656cb8c6d154aad29d8771384089be5b5141f01a)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0x1e3e1128f6bc2264a19d7a065982696d356879c5](https://etherscan.io/address/0x1e3e1128f6bc2264a19d7a065982696d356879c5)
- Control class: `2/3`
- Nested Safe: `❌`
- Funds moved in proof: `$1.6M`
- Execution class: `Multi-tx`

## Authority Path

`deploy ERC20 replacement implementation -> grantRole(ADMIN_PROXY_UPGRADE_ROLE, controlled recipient) -> grantRole(PROXY_UPGRADE_ROLE, controlled recipient) -> upgradeToAndCall(replacement implementation, '') -> drainErc20`

## Local-Fork Evidence

Local-fork execution evidence is present for this publication row.

### Executed Steps

- `deploy ERC20 drainer`
- `grantRole(ADMIN_PROXY_UPGRADE_ROLE, attacker)`; sender `0x1e3e1128f6bc2264a19d7a065982696d356879c5`
- `grantRole(PROXY_UPGRADE_ROLE, attacker)`; sender `0xdead0000000000000000000000000000deadbeef`
- `upgradeToAndCall(drainer, '')`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
