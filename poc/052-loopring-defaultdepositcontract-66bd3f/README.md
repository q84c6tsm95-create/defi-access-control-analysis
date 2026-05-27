# Loopring / DefaultDepositContract

## Summary

- Protocol: `Loopring`
- Contract name: `DefaultDepositContract`
- Contract: [0x674bdf20a0f284d710bc40872100128e2d66bd3f](https://etherscan.io/address/0x674bdf20a0f284d710bc40872100128e2d66bd3f)
- Role: `EXCHANGE_PROXY_OWNER`
- Authority holder: [0xdd2a08a1c1a28c1a571e098914ca10f2877d9c97](https://etherscan.io/address/0xdd2a08a1c1a28c1a571e098914ca10f2877d9c97)
- Control class: `2/3`
- Nested Safe: `❌`
- Funds moved in proof: `$9.0M`
- Execution class: `Multi-tx`

## Authority Path

`upgradeTo -> drainDepositEth`

## Local-Fork Evidence

Loopring system-level drain: DefaultDepositContract.setCheckBalance is false positive, but the trusted exchange is an OwnedUpgradabilityProxy. Proxy owner Safe 2/3 upgrades the exchange implementation, then the malicious implementation calls DefaultDepositContract.withdraw(...). Because msg.sender is the trusted exchange proxy, onlyExchange passes. Tenderly confirmed 3190.909394510272402941 ETH moved to attacker.

### Executed Steps

- `upgradeTo`; sender `0xdd2a08a1c1a28c1a571e098914ca10f2877d9c97`
- `drainDepositEth`; sender `0xdead0000000000000000000000000000deadbeef`; moved $6.7M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

A standalone Foundry/Anvil harness has not been generated for this row yet. Add one only after the exact sender, target, calldata, and fork-state assumptions are reviewed.
