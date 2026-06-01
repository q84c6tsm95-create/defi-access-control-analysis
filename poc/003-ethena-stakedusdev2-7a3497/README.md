# Ethena / StakedUSDeV2

## Summary

- Protocol: `Ethena`
- Contract name: `StakedUSDeV2`
- Contract: [0x9d39a5de30e57443bff2a8307a4256c8797a3497](https://etherscan.io/address/0x9d39a5de30e57443bff2a8307a4256c8797a3497)
- Role: `DEFAULT_ADMIN_ROLE`
- Authority holder: [0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862](https://etherscan.io/address/0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862)
- Control class: `5/10`
- Nested Safe: `❌`
- Funds moved in proof: `$1.79B`
- Execution class: `Delayed (8 hours)`

## Authority Path

`enumerate 11,812 sUSDe holders from local reth Transfer logs -> grant FULL_RESTRICTED_STAKER_ROLE to each holder -> redistributeLockedAmount(holder, admin Safe) for each holder -> setCooldownDuration(0) -> redeem(totalSupply - MIN_SHARES, controlled recipient, admin Safe) -> wait 8 hours for reward vesting -> redeem(MIN_SHARES, controlled recipient, admin Safe)`

## Local-Fork Evidence

Local fork full-holder sweep: 11,812 sUSDe holders were enumerated from local reth Transfer logs and verified with balanceOf. The admin Safe grants FULL_RESTRICTED_STAKER_ROLE to each holder, calls redistributeLockedAmount(holder, admin Safe), sets cooldownDuration(0), redeems all but MIN_SHARES to the attacker, waits 8 hours for reward vesting, then redeems the final MIN_SHARES. The attacker received 1,794,341,094.586690 USDe; 8556 wei remained as ERC4626 rounding dust, and attacker delta plus dust equals the pre-run raw USDe balance.

### Executed Steps

- `enumerate 11,812 sUSDe holders from local reth Transfer logs`
- `grant FULL_RESTRICTED_STAKER_ROLE to each holder`; sender `0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862`
- `redistributeLockedAmount(holder, admin Safe) for each holder`; sender `0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862`
- `setCooldownDuration(0)`; sender `0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862`
- `redeem(totalSupply - MIN_SHARES, attacker, admin Safe)`; sender `0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862`
- `wait 8 hours for reward vesting`
- `redeem(MIN_SHARES, attacker, admin Safe)`; sender `0x3b0aaf6e6fcd4a7ceef8c92c32dfea9e64dc1862`; moved $1.79B

### Full-Holder Sweep

- Holder set: `11,812` sUSDe holders enumerated from local reth logs and verified with `balanceOf`.
- Holder transactions: `11,811` role grants and `11,811` `redistributeLockedAmount` calls.
- Raw USDe balance before proof: `1,794,341,094.586690`.
- USDe moved to attacker: `1,794,341,094.586690`.
- Rounding dust left in contract: `8556` wei.
- Required wait: `8 hours` for sUSDe reward vesting.
- Holder artifact: `data/susde_holders_local.json`.
- Full-sweep output: `out/stakedusde_v2_full_holder_sweep_anvil.json`.


## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

Full-holder Python harness: `scripts/poc_stakedusde_v2_full_holder_sweep_anvil.py` in the source research workspace.

Run the holder enumeration first:

```bash
RETH_RPC=http://127.0.0.1:8545 .venv/bin/python scripts/enumerate_susde_holders_local.py
```

Then run the receipt-checked fork proof:

```bash
anvil --silent --fork-url http://127.0.0.1:8545 --fork-block-number 25213658 --host 127.0.0.1 --port 8555
ANVIL_RPC=http://127.0.0.1:8555 FORK_URL=http://127.0.0.1:8545 .venv/bin/python scripts/poc_stakedusde_v2_full_holder_sweep_anvil.py
```

Foundry smoke harness (single-holder path only): [`test/publication/EthenaStakedUSDeV2PoC.t.sol`](../../test/publication/EthenaStakedUSDeV2PoC.t.sol).

Run with `RETH_RPC=http://127.0.0.1:8545 forge test --match-path 'test/publication/EthenaStakedUSDeV2PoC.t.sol' -vv`.
