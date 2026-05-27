# USDT OFT / LayerZero / UsdtOFT

## Summary

- Protocol: `USDT OFT / LayerZero`
- Contract name: `UsdtOFT`
- Contract: [0x1f748c76de468e9d11bd340fa9d5cbadf315dfb0](https://etherscan.io/address/0x1f748c76de468e9d11bd340fa9d5cbadf315dfb0)
- Role: `OWNER`
- Authority holder: [0xa4e99d8dbf3accc7adb7b6d090181f5ae0460a18](https://etherscan.io/address/0xa4e99d8dbf3accc7adb7b6d090181f5ae0460a18)
- Control class: `2/3`
- Nested Safe: `❌`
- Funds moved in proof: `$19.8M`
- Execution class: `Atomic`

## Authority Path

`endpoint.setConfig -> oapp.setPeer -> ReceiveUln302.verify -> ReceiveUln302.commitVerification -> endpoint.lzReceive`

## Local-Fork Evidence

custom UsdtOFT message format confirmed: setPeer(30110, attacker peer) followed by lzReceive with uint16 SEND_OFT prefix moved 16,005,674.210593 USDT to attacker

### Executed Steps

- `endpoint.setConfig`; sender `0xa4e99d8dbf3accc7adb7b6d090181f5ae0460a18`
- `oapp.setPeer`; sender `0xa4e99d8dbf3accc7adb7b6d090181f5ae0460a18`
- `ReceiveUln302.verify`; sender `0xa4e99d8dbf3accc7adb7b6d090181f5ae0460a18`
- `ReceiveUln302.commitVerification`; sender `0xa4e99d8dbf3accc7adb7b6d090181f5ae0460a18`
- `endpoint.lzReceive`; sender `0x1a44076050125825900e736c501f859c50fE728c`; moved $32.0M

## Reproduction Status

This folder is generated from the current publication data and local-fork simulation cache.

