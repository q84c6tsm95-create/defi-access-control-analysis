# Publication Foundry Harnesses

These tests replay selected publication PoCs against a mainnet fork.

Run with a local reth fork endpoint:

```bash
RETH_RPC=http://127.0.0.1:8545 forge test --match-path 'test/publication/*.t.sol' -vv
```

`MAINNET_RPC_URL` takes precedence over `RETH_RPC` when both are set.

Current executable harnesses:

- `EthenaStakedUSDeV2PoC.t.sol`: admin Safe grants `FULL_RESTRICTED_STAKER_ROLE`,
  redistributes a restricted holder's sUSDe shares, sets cooldown to zero, and
  redeems USDe to the controlled recipient.
- `LayerZeroOFTSafeDVNPoC.t.sol`: owner/delegate sets the owner Safe as the
  required LayerZero V2 DVN, installs an attacker peer, verifies and commits the
  packet through `ReceiveUln302`, and executes `endpoint.lzReceive`. Current
  passing coverage: 36 OFT / OFT-adapter cases with local token metadata.

The generated `poc/` folders remain the row-level publication evidence index.
Additional Foundry tests should be added here only after the exact sender,
target, calldata, and fork-state assumptions are reviewed.
