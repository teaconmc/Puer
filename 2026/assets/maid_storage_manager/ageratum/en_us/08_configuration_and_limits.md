---
title: Configuration and Limits
navigation:
  title: Configuration and Limits
description: The retry ceilings, the speed multipliers, the debug commands, and what is deliberately absent.
---

# Configuration and limits

## The configuration is large and mostly about other mods

The config spec is built from dozens of entries across four areas:

| Section | What it covers |
|:---|:---|
| `compat.*` | every integration — the largest section by far |
| `speed.*` | six per-activity multipliers |
| `behavior.*` | retry ceilings and roaming scope |
| `debug_msg` | debug output |

The `compat` section is covered in [Playing with other mods](07_integrations). This page covers the rest.

## Speed: six multipliers, all below 1.0

| Option | Default | Range |
|:---|:---|:---|
| `speed.crafting` | 0.5 | 0.0–3.0 |
| `speed.collect` | 0.5 | 0.0–3.0 |
| `speed.place` | 0.5 | 0.0–3.0 |
| `speed.follow` | 0.5 | 0.0–3.0 |
| `speed.view_change` | 0.5 | 0.0–3.0 |
| **`speed.view`** | **0.3** | 0.0–3.0 |

Every default is at or below `0.5`, and **`view` is the slowest**. The pacing is intentional: a maid visibly reads a container before acting on it. Raising `speed.view` is the single most effective change if throughput matters more to you than the animation, and all six can go up to `3.0`.

Setting any of these to `0.0` is permitted by the range, which is worth noting as a hazard rather than a feature.

## Behaviour: three ceilings and one scope switch

| Option | Default | Meaning |
|:---|:---|:---|
| `behavior.max_store_tries` | **3** | attempts before giving up on storing |
| `behavior.max_logistics_tries` | **50** | attempts before giving up on a logistics run |
| `behavior.max_craft_tries` | **600** | attempts before giving up on a craft |
| `behavior.use_all_storage` | **`false`** | allow visiting **all** storages, not only defined ones |

The 3 / 50 / 600 spread is the most informative thing in the file — see [04 The crafting engine](04_crafting_engine) for why crafting needs two hundred times the patience of storing.

`use_all_storage` defaulting to **off** means **storage marking is mandatory by default**. Turning it on is a convenience that removes your control over what maids touch; on a shared base, decide that deliberately.

## Two debug commands, and no permission gate

The addon registers command trees offering:

| Command | Purpose |
|:---|:---|
| `debug_crafting <control>` | prepare and step through crafting debug |
| `debug_maid <control>` | attach a debug context to a maid |

Two things to know:

**No permission requirement was found on either tree.** There is no `requires(...)` gate in the command registration, which means these are available to any player rather than to operators only. On a public server that is worth restricting externally — the same caution that applies to several other debug commands in this batch.

**Their responses are hardcoded English literals**, not translation keys — for example the prompt to click a maid to set up a debug context. So they read as English regardless of your language setting, and they cannot be translated by a resource pack.

They are developer tools rather than gameplay, but they are present in a normal installation.

## Localization is fully paired

| File | Keys |
|:---|--:|
| `en_us.json` | **512** |
| `zh_cn.json` | **512** |

Equal counts in both languages. Aside from the hardcoded command output noted above, the addon is properly localized.

## What is deliberately absent

| Absent | Why it is correct |
|:---|:---|
| **Blocks** | every piece is an item, worn or carried |
| **Loot tables** | there are no blocks that could drop |
| **World generation** | nothing is added to the world |
| **Its own maid entity** | it extends the parent mod's maids |
| **Vanilla crafting recipes** | everything is made at the parent's altar |

The zero loot tables in particular is the sort of thing that looks like a gap in a checklist and is not one: with no block registry, a loot table would have nothing to attach to.

## Other packaging facts

| Concern | Value |
|:---|:---|
| Version | `2.0.0-neoforge+mc26.1.2` |
| Author / licence | xypp / **MIT** |
| Access transformer | present |
| Sounds | 1, with a `sounds.json` |
| Textures | 84 |
| Advancements | 13 |
| Tags | 11 |
| Entities | 2, both invisible display helpers |
| Memory modules | registered — new maid brain memories |

The two entities are worth a note: they are not creatures. They exist so the mod can show things in the world — markers and held-item displays — which is why they are registered in the `MISC` category and paired with their own renderers.

## Reading the mod's own priorities from its numbers

Three numbers together describe the design better than any prose:

- **600 crafting retries** — deep chains are expected and supported.
- **`speed.view` at 0.3** — being *seen* to work matters more than speed.
- **`use_all_storage` off by default** — you are meant to remain in control of what maids touch.

[Back to index](index)
