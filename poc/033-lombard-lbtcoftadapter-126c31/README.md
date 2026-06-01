# Lombard / LBTCOFTAdapter

## Summary

- Protocol: `Lombard`
- Contract name: `LBTCOFTAdapter`
- Contract: [0xacb11bc20b1945e59976e3307d2a805faa126c31](https://etherscan.io/address/0xacb11bc20b1945e59976e3307d2a805faa126c31)
- Role: `OWNER`
- Authority holder: [0x251a604e8e8f6906d60f8dedc5aaeb8cd38f4892](https://etherscan.io/address/0x251a604e8e8f6906d60f8dedc5aaeb8cd38f4892)
- Control class: `3/5`
- Nested Safe: `❌`
- Funds moved in proof: `$31.6M`
- Execution class: `Atomic`

## Authority Path

`endpoint.setConfig -> oapp.setPeer -> setRateLimits -> ReceiveUln302.verify -> ReceiveUln302.commitVerification -> endpoint.lzReceive`

## Local-Fork Evidence

LayerZero V2 owner/delegate compromise path verified as Safe-as-DVN; see docs/layerzero_v2_atomic_chain_validation.md.

### Executed Steps

- `endpoint.setConfig`; sender `0x251a604e8e8f6906d60f8dedc5aaeb8cd38f4892`
- `oapp.setPeer`; sender `0x251a604e8e8f6906d60f8dedc5aaeb8cd38f4892`
- `setRateLimits`; sender `0x251a604e8e8f6906d60f8dedc5aaeb8cd38f4892`
- `ReceiveUln302.verify`; sender `0x251a604e8e8f6906d60f8dedc5aaeb8cd38f4892`
- `ReceiveUln302.commitVerification`; sender `0x251a604e8e8f6906d60f8dedc5aaeb8cd38f4892`
- `endpoint.lzReceive`; sender `0x1a44076050125825900e736c501f859c50fE728c`; moved $32.5M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

Foundry smoke harness (single-holder path only): [`test/publication/LayerZeroOFTSafeDVNPoC.t.sol`](../../test/publication/LayerZeroOFTSafeDVNPoC.t.sol).

Run with `RETH_RPC=http://127.0.0.1:8545 forge test --match-path 'test/publication/LayerZeroOFTSafeDVNPoC.t.sol' -vv`.
