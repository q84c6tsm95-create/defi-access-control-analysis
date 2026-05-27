# ZkEVM bridge / RootERC20BridgeFlowRate

## Summary

- Protocol: `ZkEVM bridge`
- Contract name: `RootERC20BridgeFlowRate`
- Contract: [0xba5e35e26ae59c7aea6f029b68c6460de2d13eb6](https://etherscan.io/address/0xba5e35e26ae59c7aea6f029b68c6460de2d13eb6)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0xd2c37fc6fd89563187f3679304975655e448d192](https://etherscan.io/address/0xd2c37fc6fd89563187f3679304975655e448d192)
- Control class: `4/6`
- Nested Safe: `❌`
- Funds moved in proof: `$12.3M`
- Execution class: `Atomic`

## Authority Path

`upgrade -> drainEth -> drainErc20 -> drainErc20`

## Local-Fork Evidence

Original 'setRateControlThreshold' label was scanner-picked. Real drain is via OZ v4 ProxyAdmin.upgrade by 4/6 Safe (0xd2c37fc...d192), then _drainEth + _drainErc20(USDC). USDT $60K dust reverts on old-USDT semantics but ETH ($9.76M) + USDC ($2.93M) = $12.69M extracts cleanly in one Safe MultiSend. Bridge flow-rate caps and admin-bridge swap paths are bypassed entirely by upgrade-to-drainer.

### Executed Steps

- `upgrade`; sender `0xd2c37fc6fd89563187f3679304975655e448d192`
- `drainEth`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20(USDC)`; sender `0xdead0000000000000000000000000000deadbeef`
- `drainErc20(USDT)`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

