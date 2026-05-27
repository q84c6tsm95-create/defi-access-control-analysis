# Katana / vbETH

Claim 32 of 160 in the generated publication set.

## Summary

- Protocol: `Katana`
- Contract name: `vbETH`
- Contract: [0x2dc70fb75b88d2eb4715bc06e1595e6d97c34dff](https://etherscan.io/address/0x2dc70fb75b88d2eb4715bc06e1595e6d97c34dff)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x2de242e27386e224e5fbf110ea8406d5b70740ec](https://etherscan.io/address/0x2de242e27386e224e5fbf110ea8406d5b70740ec)
- Control class: `2/3`
- Nested Safe: `✅ (2/5, 3/5)`
- Funds moved in proof: `$31.6M`
- Execution class: `Multi-tx`

## Authority Path

`ProxyAdmin.upgrade -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x2de242e27386e224e5fbf110ea8406d5b70740ec`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
