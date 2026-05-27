# Across / HubPool

## Summary

- Protocol: `Across`
- Contract name: `HubPool`
- Contract: [0xc186fa914353c44b2e33ebe05f21846f1048beda](https://etherscan.io/address/0xc186fa914353c44b2e33ebe05f21846f1048beda)
- Role: `OWNER`
- Authority holder: [0xb524735356985d2f267fa010d681f061dff03715](https://etherscan.io/address/0xb524735356985d2f267fa010d681f061dff03715)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$15.3M`
- Execution class: `Multi-tx`

## Authority Path

`setCrossChainContracts(chainId=1, adapter=replacement, spokePool=placeholder) -> relaySpokePoolAdminFunction(chainId=1, data="")`

## Local-Fork Evidence

Scanner row was config-ok (analyzer-picked function is a non-draining setter). Drain confirmed on Tenderly via: HubPool (Across) setCrossChainContracts + _relaySpokePoolAdminFunction delegatecall arbitrary-code. See docs/hubpool_setcrosschain_delegatecall_drain_poc.md.

### Executed Steps

- `setCrossChainContracts(chainId=1, adapter=malicious, spokePool=dummy)`; sender `0xb524735356985d2f267fa010d681f061dff03715`
- `relaySpokePoolAdminFunction(chainId=1, data="")`; sender `0xb524735356985d2f267fa010d681f061dff03715`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

