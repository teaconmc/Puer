---
title: "Technical notes"
navigation:
  title: "05 Technical notes"
---

# Technical notes

Reference material and rough edges, all read from the current source.

## Registries

| Kind | Count | IDs |
|:---|---:|:---|
| Items | 2 | `craft_list`, `craft_order` |
| Menus | 2 | `craft_list_menu`, `craft_order_menu` |
| Data components | 2 | `flavor_text`, `int` |
| Points of interest | 4 | `oven_poi`, `blender_poi`, `crafting_poi`, `dough_crafting_table_poi` |
| Creative tab | 1 | `maid_bakeries_tab` |
| Recipes | 1 | `craft_list` |

No blocks, no entities, no commands, no config file. Everything visual belongs to the parent mods.

## How the maid finds machines

Each craft mode has a point-of-interest type covering **every block state** of its machine — the Bakeries oven, blender and dough crafting table, plus the vanilla crafting table for shapeless mode.

All four are registered with **one ticket and a valid range of one**, which has a practical consequence: **one maid per machine.** A second maid cannot claim an oven that is already taken, so scaling up means building more machines rather than assigning more maids.

Only `dough_crafting_table_poi` is added to the vanilla acquirable-job-site tag. The other three are not, so they are usable as maid work targets without turning into villager professions.

## Order state is memory-only

The queue lives in a **static map on the server, keyed by maid UUID**. It is removed when the maid leaves the level and is never serialized to the save.

Consequences already covered in [03 Giving an order](03_giving_an_order), restated here as a rule: **a maid's order does not survive chunk unload, dimension change, or a server restart.**

## Known rough edges

These are all real and worth knowing, none of them fatal.

**Two parent mods are used but neither is declared.** Covered in [01 Getting started](01_getting_started). This is the one that will actually bite you.

**A debug print is left in.** Assigning an order writes the entire task map to standard output. On a busy server that means console spam proportional to how often orders are handed out.

**Some interface text is hardcoded English.** The two menu titles ("Craft List", "Craft Order") and the tooltip label ("Result:") are literal strings rather than translation keys, so they stay English on a Chinese client. The rest of the mod is properly translated in both languages.

**The creative tab title key has no namespace.** It is registered as a bare `creativetab_maid_bakeries_tab` rather than the conventional `itemGroup.<modid>` form. It works, but a bare key can be silently overwritten by another mod that happens to use the same one.

**One data component is named `int`.** A component called simply `int` is unusually generic for a registry entry, though the namespace keeps it from colliding.

## Leftover translation keys

The language files describe more than the mod registers:

| Leftover | Reality |
|:---|:---|
| `oven_sticky_note`, `drink_sticky_note` items | not registered — only Craft List and Craft Order exist |
| Oven, Drink, Blender, Eat Cake tasks | not registered — only Cut and Baking exist |
| conditions mentioning an oven/drink note | reference the unregistered items above |

There is also one more item texture shipped than there are items to use it. All of this points the same way: an earlier design used per-machine sticky notes and per-machine tasks, and the Craft List plus Craft Order replaced them without the old strings being cleaned out.

**Do not treat those names as hidden features.** They are dead text.

## Translation quality note

Both `en_us` and `zh_cn` are present and cover the same keys. The English side reads as machine-assisted in places — the Cut condition renders as *"The Lord held a bread knife in his hand"*, which is a literal rendering of the Chinese word for the maid's owner. The meaning is "the owner is holding a bread knife".

## Metadata

| Field | Value |
|:---|:---|
| Mod ID | `maid_bakeries` |
| Version | 1.0.0 |
| License | MIT |
| Group | `com.renyigesai.maid_bakeries` |
| Minecraft | `[26.1.2]` — one exact version |
| NeoForge | `[26.1.2.75,)` |

The group id shares its author prefix with Bakeries itself, so this is a first-party addon rather than a third-party bridge.

[Back to index](index)
