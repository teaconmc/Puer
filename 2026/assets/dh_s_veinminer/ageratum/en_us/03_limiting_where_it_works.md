---
title: Limiting Where It Works
navigation:
  title: Limiting Where It Works
description: Block filters and cuboid regions, and the fail-open behaviour server owners must know.
---

# Limiting Where It Works

There are two independent ways to restrict vein mining: **by block** and **by location**. They stack — a block must pass both to be chained.

## By block: whitelist or blacklist

Remember from [Configuration](02_configuration) that `veinMinerMode` starts at `DISABLED`, meaning **no filter is applied at all**. Pick a mode first:

**`BLACKLIST`** — chain everything except the listed blocks. Use this when you only need to protect a few things:

```
veinMinerMode = "BLACKLIST"
veinMinerBlacklist = "minecraft:bedrock,minecraft:obsidian"
```

**`WHITELIST`** — chain only the listed blocks. Use this when you want vein mining to be an ore-only convenience:

```
veinMinerMode = "WHITELIST"
veinMinerWhitelist = "minecraft:stone,minecraft:iron_ore,minecraft:deepslate_iron_ore"
```

Both lists are **plain comma-separated block ids**. Whitespace around entries is trimmed and empty entries are dropped, so trailing commas are harmless. The list not matching the current mode is parsed but never consulted.

::: tip
`WHITELIST` is the safer default for a public server: anything you forget to list simply will not chain. With `BLACKLIST`, anything you forget to list **will** chain — including blocks added later by another mod.
:::

## By location: cuboid regions

`veinMinerRegions` takes a **JSON array of cuboids**, each defined by two opposite corners:

```json
[
  {"from": [100, 50, 100], "to": [200, 80, 200]},
  {"from": [300, 60, 300], "to": [400, 90, 400]}
]
```

Behaviour:

- **Empty (`[]`, the default) means no restriction** — every position is allowed.
- With one or more regions, **only blocks inside a region can be chained**.
- Multiple disjoint regions are supported.
- **Reaching a region boundary stops the chain in that direction immediately** — the vein is clipped at the wall rather than the whole attempt being rejected.

That last point is what makes regions usable as a mining-area feature: a player standing at the edge of a permitted zone still gets a partial chain, they just cannot pull ore out of the area beyond it.

## The one thing a server owner must know

::: danger
**Malformed region JSON fails open, not closed.** If the string cannot be parsed, the mod logs an error and falls back to an **empty list** — and an empty list means **no restriction at all**.

So a typo in `veinMinerRegions` does not disable vein mining in that area; it **removes the restriction everywhere**. After editing regions, check the log for a parse error before assuming the limit is active. The message looks like:

```
解析范围白名单配置失败: <reason>, 输入内容: <your JSON>
```
:::

The block lists behave differently and more safely: a blank or unparseable list yields an empty list, which under `WHITELIST` means **nothing chains** (fail-closed) and under `BLACKLIST` means **nothing is protected** (fail-open). Mode choice therefore also decides your failure direction.

## Combining the two

A typical "quarry zone" setup:

```
veinMinerEnabled          = true
veinMinerMode             = "WHITELIST"
veinMinerWhitelist        = "minecraft:stone,minecraft:deepslate,minecraft:iron_ore"
veinMinerRegions          = [{"from":[-64,-60,-64],"to":[64,20,64]}]
veinMinerTriggerAction    = "KEYBIND"
veinMinerMaxBlocks        = 64
```

This allows chaining three block types, only within one cuboid, only while the key is held. Everything outside any of those three conditions behaves like vanilla.

Because everything re-reads on config reload, you can adjust all of this without restarting — see [Configuration](02_configuration).

[Back to index](index)
