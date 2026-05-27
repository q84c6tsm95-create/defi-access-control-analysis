# Unichain / ETHLockbox

Claim 34 of 160 in the generated publication set.

## Summary

- Protocol: `Unichain`
- Contract name: `ETHLockbox`
- Contract: [0x08ba0023ed60c7bd040716dd13c45fa0062df5c5](https://etherscan.io/address/0x08ba0023ed60c7bd040716dd13c45fa0062df5c5)
- Role: `UPGRADE_AUTHORITY`
- Authority holder: [0x6d5b183f538abb8572f5cd17109c617b994d5833](https://etherscan.io/address/0x6d5b183f538abb8572f5cd17109c617b994d5833)
- Control class: `3/3`
- Nested Safe: `✅ (3/5, 5/7, 10/13)`
- Funds moved in proof: `$30.7M`
- Execution class: `Atomic`

## Authority Path

`ProxyAdmin.upgrade -> drainEth -> drainErc20`

## Local-Fork Evidence

L2BEAT upgrade permission verified on local fork via recorded ProxyAdmin path.

### Executed Steps

- `ProxyAdmin.upgrade`; sender `0x6d5b183f538abb8572f5cd17109c617b994d5833`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache. A Foundry/Anvil harness has not been generated for this claim yet; add one here when the claim is converted from cached fork evidence into a standalone test fixture.
