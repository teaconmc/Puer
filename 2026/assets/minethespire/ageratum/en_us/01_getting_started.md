---
title: "Getting started"
navigation:
  title: "Getting started"
---

# Getting started

Mine the Spire adds no blocks and no world generation. There is exactly **one** crafting recipe in the whole mod, and every other item is currently obtained from the creative tab or `/give`.

## What is really registered

| Category | Count | Notes |
|:---|:---|:---|
| Items | 79 | 67 relics + 12 non-relic items |
| Blocks | 0 | `ModBlocks` is an empty class body |
| Entities | 6 | 4 Orbs, 1 shuriken projectile, 1 flask projectile |
| Mob effects | 11 | one is marked `@Deprecated` |
| Potions | 12 | 10 of them reachable by brewing |
| Damage types | 3 | `orb_lightning`, `orb_dark`, `bouncing_hit` |
| Enchantments | 0 | the whole `ModEnchantments` body is commented out |
| Loot modifiers | 0 | no world drops are added |

There is **no world generation, no structure, no loot table and no villager trade** for any item. In a survival world without cheats, the only reachable item is Spirit.

## The creative tab

All items and potion variants are collected into one creative tab whose registry group is `minethespire`, with **Defect Mask** as its icon. The English display name of the tab is the auto-generated `Minethespire`; the Chinese translation is `我的尖塔`.

Potion variants are added to the tab per-potion, and the choice of variants is not uniform — some potions only contribute a splash and/or lingering bottle to the tab even though brewing produces a normal bottle. See [05 Potions & brewing](05_potions_and_brewing).

## The only crafting recipe

**Spirit** (`minethespire:spirit`) is the single item with a real recipe JSON.

<recipe id="minethespire:spirit"/>

Eating Spirit is a normal food action (nutrition 1, saturation 0.1, always edible) and applies **Intangible** for `6000` ticks (5 minutes).

## Installing Curios

Curios is an **optional** dependency, but relics are close to useless without it.

- With Curios present, right-clicking a relic equips it into a Spire Relic slot, and the mod generates its own slot definitions and item tags.
- Without Curios, `EventListeners.onServerStarted` logs `Mod Curios is not installed. Some features are disabled.` Relic right-click falls through to vanilla behaviour, and relic lookups fall back to scanning the vanilla equipment slots instead.

Relic **attribute modifiers** are declared for `EquipmentSlotGroup.ANY`, so an equipped-anywhere relic still contributes its attributes; the Curios slots simply give you 9 places to put them.

## Suggested first steps

1. Install Curios so the `spire_relic` and `orginal_spire_relic` slots exist.
2. Grab one *original* relic (for example `minethespire:cracked_core`) and one or two normal relics from the creative tab.
3. Right-click them in hand to slot them.
4. Turn on the Combat State HUD (client config `combat_state`, default `false`) so you can see when "on entering combat" relics will fire.
5. Attack a hostile mob to enter combat and watch the relic triggers, then use `/mts orb channel` to experiment with Orbs.

## Where to go next

- [02 Relics & Curios slots](02_relics_and_curios) for the full relic tables
- [03 Orbs](03_orbs) for the orb system
- [08 Commands & configuration](08_commands_and_config) for the config keys mentioned above

[Back to index](index)
