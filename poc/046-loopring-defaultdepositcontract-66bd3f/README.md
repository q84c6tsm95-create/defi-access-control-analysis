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

Loopring system-level drain: the DefaultDepositContract custody risk is reachable through the trusted exchange proxy. The proxy owner Safe can execute upgradeTo(malicious implementation), then an attacker call through the exchange proxy invokes DefaultDepositContract.withdraw(...). The deposit contract sees msg.sender as the trusted exchange proxy, so onlyExchange passes. Local fork no-shortcut verification moved the current ETH balance to the attacker.

### Executed Steps

- `upgradeTo`; sender `0xdd2a08a1c1a28c1a571e098914ca10f2877d9c97`
- `drainDepositEth`; sender `0xdead0000000000000000000000000000deadbeef`; moved $6.7M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.
