# Fuel Bridge / FuelERC20GatewayV4

## Summary

- Protocol: `Fuel Bridge`
- Contract name: `FuelERC20GatewayV4`
- Contract: [0xa4ca04d02bfdc3a2df56b9b6994520e69df43f67](https://etherscan.io/address/0xa4ca04d02bfdc3a2df56b9b6994520e69df43f67)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0x32da601374b38154f05904b16f44a1911aa6f314](https://etherscan.io/address/0x32da601374b38154f05904b16f44a1911aa6f314)
- Control class: `7/10`
- Nested Safe: `✅ (1/2)`
- Funds moved in proof: `$4.3M`
- Execution class: `Multi-tx`

## Authority Path

`upgradeTo(replacement implementation) -> drainErc20 -> drainErc20 -> drainErc20 -> drainErc20`

## Local-Fork Evidence

Scanner row was config-ok (analyzer-picked function is a non-draining setter). Drain reproduced on the local fork via: FuelERC20GatewayV4 UUPS upgrade via DEFAULT_ADMIN_ROLE. See docs/fuel_erc20_gateway_v4_uups_drain_poc.md.

### Executed Steps

- `upgradeTo(Drainer)`; sender `0x32da601374b38154f05904b16f44a1911aa6f314`
- `_drainErc20(WETH, attacker)`; sender `0xdead0000000000000000000000000000deadbeef`
- `_drainErc20(USDC, attacker)`; sender `0xdead0000000000000000000000000000deadbeef`
- `_drainErc20(USDT, attacker)`; sender `0xdead0000000000000000000000000000deadbeef`
- `_drainErc20(rsETH, attacker)`; sender `0xdead0000000000000000000000000000deadbeef`

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

