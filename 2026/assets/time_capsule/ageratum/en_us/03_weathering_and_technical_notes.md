---
title: Weathering, Waxing and Technical Notes
navigation:
  title: 03 Weathering and Technical Notes
---

# Weathering, Waxing and Technical Notes

## Eight blocks, one copper chain

The mod registers a **complete copper-style weathering set** rather than a single block:

| Stage | Unwaxed | Waxed |
|:---|:---|:---|
| Fresh | `time_capsule_block` | `waxed_time_capsule_block` |
| Exposed | `exposed_time_capsule_block` | `waxed_exposed_time_capsule_block` |
| Weathered | `weathered_time_capsule_block` | `waxed_weathered_time_capsule_block` |
| Oxidized | `oxidized_time_capsule_block` | `waxed_oxidized_time_capsule_block` |

All eight have their own translation keys in both languages, their own blockstates and their own loot tables — so each stage drops itself.

## The chain is data-driven, not hardcoded

Weathering and waxing are wired through **NeoForge data maps**, exactly the mechanism vanilla copper uses:

**`neoforge/data_maps/block/oxidizables.json`** — three entries, forming the chain:

```
time_capsule_block          → exposed_time_capsule_block
exposed_time_capsule_block  → weathered_time_capsule_block
weathered_time_capsule_block → oxidized_time_capsule_block
```

**`neoforge/data_maps/block/waxables.json`** — four entries, one per stage, each mapping to its waxed counterpart.

::: info
Note the asymmetry: **`oxidizables` has three entries while `waxables` has four.** That is correct, not an omission — oxidized is the final stage and has no next stage to declare, but it can still be waxed. A chain of four stages needs exactly three transitions.
:::

Because this is a data map, a datapack can retarget or remove the transitions without touching code.

## ⚠️ The one risk: mining a sealed capsule

Each block's loot table uses `minecraft:copy_components` with `source: block_entity`, and its `include` list is:

```
minecraft:custom_name
minecraft:container
minecraft:lock
minecraft:container_loot
```

**All four are vanilla components. This mod's own `time_capsule:time_capsule_data` is not in that list** — and that component is where the **message, the time mode and the unlock time** are stored.

::: danger
**Do not mine a sealed capsule if you care about what is inside it.**

The four copied components are vanilla ones; the mod's own component — carrying the message, mode and unlock timestamp — is **not listed among them**. What exactly survives a break-and-replace cycle is therefore not something this page can promise, and the safe reading is that **the sealed state should not be assumed to survive being mined**.

Treat a sealed capsule as furniture: place it where it can stay, and open it in place when the tooltip reads **Ready to open**. If you must relocate one, do it *before* sealing.
:::

## The data component

`time_capsule:time_capsule_data` is a record with four fields:

| Field | Type | Notes |
|:---|:---|:---|
| `items` | list of item stacks | **25 slots** (`SIZE = 25`) |
| `message` | text component | Full component, so formatting is preserved |
| `timeMode` | enum | `GAME_TICK` or `REAL_TIME` |
| `unlockTime` | long | Interpreted per the stored mode |

It has both a `Codec` (for saving) and a `StreamCodec` (for network sync), which is the correct pairing for a component that must reach the client for tooltip rendering.

## Networking

One payload, `TimeCapsuleSealPayload`, carries the seal action from client to server. The screen collects the fields, the payload commits them — the server is what actually writes the component.

## What the mod does not have

| Feature | Status |
|:---|:---|
| Config file | **none** — zero `ModConfigSpec` usage |
| Commands | **none** — zero `RegisterCommandsEvent` |
| Mixins | **none** — no mixin config at all |
| Entities | none |
| World generation | none |
| External dependencies | none beyond NeoForge and Minecraft |

That is a genuinely small surface, and it means **nothing about the countdown can be reconfigured or overridden**. The five refusal messages and the two modes are the whole behaviour.

## Localization

`en_us` and `zh_cn` have **29 keys each and are fully equivalent** — 8 block names, 1 item name, 1 container title, 11 GUI strings, 5 refusal messages and 3 tooltip strings. No orphan keys in either direction.

## Version note

`mod_version` is **`1.0.0-indev`** and `minecraft_version_range` is pinned to the exact `[26.1.2]`. The `-indev` suffix is the author's own marking; treat behaviour as subject to change and re-check the source if a later build behaves differently from this page.

[Back to index](index)
