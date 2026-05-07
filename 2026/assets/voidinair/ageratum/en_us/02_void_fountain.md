---
title: Void Fountain
navigation:
  title: Void Fountain
---

# Void Fountain

`void_fountain` (虚空涌泉) is the signature production block of Void in Air. Like AnvilCraft's Mineral Fountain, it grows blocks, but only the results of Void Decay.

## Creating it

The Void Fountain is not crafted. It is created inside the world by dropping a special pile. Stack the following from top to bottom at the very bottom of the world (roughly at bedrock level, `minY` to `minY+10`):

1. An **Transcendence Anvil** (`anvilcraft:transcendence_anvil`), the top falling block
2. A **Void Matter Block** below it
3. An **Impact Pile** below that
4. A **Mineral Fountain** at the bottom

Then drop the Transcendence Anvil so it falls at least 19 blocks (`fall distance + 1 >= 20`). On impact the four blocks are consumed and the Mineral Fountain becomes the Void Fountain. Creating one also grants the *Null Point E-* advancement.

## How it produces

The Void Fountain ticks on an interval given by the **Void Fountain Cooldown** (`voidFountainCooldown`, default 600 ticks = 10 s):

- It only works in the deep fall of the world (`minY` to `minY+8`).
- Its four horizontal neighbours must all be the **same block** (or all air), otherwise it idles.
- The block directly above must be air.

When these hold and the cooldown ends, it places a block above itself chosen at random:

- 20% → a **Void Stone** (`anvilcraft:void_stone`)
- 20% → an **Earth Core Shard Ore** (`anvilcraft:earth_core_shard_ore`)
- otherwise → a **Void Decay** result (a corrupted/replaceable variant, occasionally copying the surrounding block on a small chance)

The tooltip warns: *"Similar to Mineral Fountain, but can only produce the result of Void Decay. Trying to generate blocks like Mineral Fountain can lead to some unusual things…"*

## Configuration

The only server-config option is `voidFountainCooldown` — the cooldown in ticks between attempts (default `600`, minimum `4`). Lowering it makes the fountain faster.

[Back to index](index)
