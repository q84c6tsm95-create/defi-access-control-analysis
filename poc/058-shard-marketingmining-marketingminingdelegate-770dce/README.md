# SHARD / MarketingMining / MarketingMiningDelegate

## Summary

- Protocol: `SHARD / MarketingMining`
- Contract name: `MarketingMiningDelegate`
- Contract: [0x0feccb11c5b61b3922c511d0f002c0b72d770dce](https://etherscan.io/address/0x0feccb11c5b61b3922c511d0f002c0b72d770dce)
- Role: `PROXY_ADMIN`
- Authority holder: [0xaeb5bcdb55e6abc2450595df27f993b82f375756](https://etherscan.io/address/0xaeb5bcdb55e6abc2450595df27f993b82f375756)
- Control class: `Other`
- Nested Safe: `❌`
- Funds moved in proof: `$7.8M`
- Execution class: `Delayed`

## Authority Path

`Timelock.queueTransaction(_setImplementation) -> Timelock.executeTransaction(_setImplementation) -> drainEth -> drainErc20`

## Local-Fork Evidence

Local fork no-shortcut verification: the Timelock admin queues and, after its 86,400 second delay, executes _setImplementation on MarketingMiningDelegator; the attacker-deployed Compound-compatible implementation then drains current ETH, WBTC, USDT, and WETH balances to the attacker.

### Executed Steps

- `Timelock.queueTransaction(_setImplementation)`; sender `0x9522368481c84250fd4b2a4ea03fb875024d9956`
- `Timelock.executeTransaction(_setImplementation)`; sender `0x9522368481c84250fd4b2a4ea03fb875024d9956`
- `_drainEth -> _drainErc20`; sender `0xdead0000000000000000000000000000deadbeef`; moved $7.8M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
