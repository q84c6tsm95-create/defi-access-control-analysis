# Tonstarter / TreasuryV1_1

## Summary

- Protocol: `Tonstarter`
- Contract name: `TreasuryV1_1`
- Contract: [0xd27a68a457005f822863199af0f817f672588ad6](https://etherscan.io/address/0xd27a68a457005f822863199af0f817f672588ad6)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0x15280a52e79fd4ab35f4b9acbb376dcd72b44fd1](https://etherscan.io/address/0x15280a52e79fd4ab35f4b9acbb376dcd72b44fd1)
- Control class: `EOA`
- Nested Safe: `❌`
- Funds moved in proof: `$4.0M`
- Execution class: `Multi-tx`

## Authority Path

`deploy ETH replacement implementation -> upgradeTo -> drainEth`

## Local-Fork Evidence

Local-fork no-shortcut verification: the DEFAULT_ADMIN_ROLE EOA calls the custom Tonstarter proxy upgradeTo(attacker-deployed drainer), then the attacker calls drainEth through the upgraded proxy. The fork replay moved the full current ETH balance from the proxy to the attacker without protocol code or storage overrides.

### Executed Steps

- `deploy ETH drainer`; sender `0xdead0000000000000000000000000000deadbeef`
- `upgradeTo`; sender `0x15280a52e79fd4ab35f4b9acbb376dcd72b44fd1`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

