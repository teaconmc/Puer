---
title: Good to Know
navigation:
  title: Good to Know
description: What is not implemented yet, and the behaviours that surprise people.
---

# Good to Know

## ⚠️ The Restoration Table does nothing

::: danger
**The block places, looks like a station — and has no behaviour at all.** It is an empty shell in this build.

Worse: **breaking it destroys it**, because it has no loot table. So do not place it expecting to pick it back up.

If a guide tells you to restore items at the Restoration Table, that feature is **not in this version**.
:::

## What actually works

| System | State |
|:---|:---|
| **Digging up suspicious blocks** | ✅ Works |
| **Identifying finds** | ✅ Works — see below |
| **Leftover pages and the story** | ✅ Complete in both English and Chinese |
| **The Thylacine (the animal)** | ⚠️ Implemented but **no way to obtain one** |
| **Restoring items** | ❌ Not implemented |

## How identification works

Put a suspicious find in an **Identification Manual** and it turns into a real item. Three things worth knowing:

- **It gives overflow back instead of voiding it**, and refuses to run while its output slots are full — so you cannot lose items by carelessness.
- **Luck helps.** The vanilla Luck attribute feeds into identification results here, which gives that usually-neglected attribute a real use.
- **Suspicious blocks follow vanilla rules**: brushing them yields the item; breaking them destroys it. Never break them.

## ⚠️ Raiders will attack the blue pigeons

Every raider in the game — pillagers, vindicators, evokers, witches, ravagers — will treat this mod's **blue pigeon as a target**, whether or not any of this mod's content is nearby.

::: warning
That is deliberate story logic rather than a bug, but it changes illager behaviour globally. If your pigeons keep getting attacked by raiders you summoned for a farm design, **that is this mod**.
:::

## Nothing is craftable

There are no recipes at all. Everything comes from digging, identifying, or creative mode — consistent with an archaeology-style progression.

## What this mod gets right

Worth saying plainly, because several of these are uncommon:

- Its one required dependency (**GeckoLib**) is declared properly with a version range — nothing hidden.
- **English and Chinese are equally complete**, including all six story pages in both languages.
- Identification is data-driven, so a datapack can add new identifiable items without touching the mod.
- No config file — and there is genuinely nothing a server owner would need to tune.

## Redistribution

The mod is **All Rights Reserved**, so including it in a modpack needs the author's permission.

## Summary

| Thing | Status |
|:---|:---|
| **Restoration Table** | ⚠️ **Does nothing; breaks permanently** |
| Thylacine | ⚠️ Exists but unobtainable |
| Digging and identification | ✅ Working |
| Story pages | ✅ Bilingual, complete |
| Raiders vs. pigeons | Deliberate global behaviour |
| Recipes | None |
| Modpack use | Needs permission |

[Back to index](index)
