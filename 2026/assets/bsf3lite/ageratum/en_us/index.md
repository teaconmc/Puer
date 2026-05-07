---
title: "Better Snowball Fight 3 Reforged"
navigation:
  title: "Better Snowball Fight 3 Reforged"
---

# Better Snowball Fight 3 Reforged

Better Snowball Fight 3 Reforged (`bsf3lite`) turns the vanilla snowball into a whole weapon platform: seventeen snowball types, cannons and rifles and a machine gun and a shotgun, storage tanks that feed them, catching gloves, a repulsion field, and buildable Advanced Snow Golems that fight for you.

This is the **lite** build. Its ID is literally `bsf3lite`, and its bundled language file still carries names for a great deal of content that this build does not register — see [Scope, Localization and Networking](08_scope_localization_and_networking) before you trust any item list you find elsewhere.

## Reading Route

1. [Getting Started](01_getting_started): what is registered, the creative tab, and your first snowball.
2. [Snowballs](02_snowballs): all seventeen thrown types and what each one does.
3. [Ammo and Weapons](03_ammo_and_weapons): clamps, storage tanks, the ammo cycling keys, and every launcher.
4. [Gear and Food](04_gear_and_food): gloves, the repulsion field, boots, the jet engine, cores and consumables.
5. [Advanced Snow Golems](05_snow_golems): summoning, equipping, behaviour modes, healing and the dummy.
6. [Blocks, Effects and Enchantments](06_blocks_effects_enchantments): the four blocks, two effects and three enchantments.
7. [Advancements and Configuration](07_advancements_and_configuration): the thirteen advancements and both config files.
8. [Scope, Localization and Networking](08_scope_localization_and_networking): what the lang file promises but this build does not have, plus packet notes.

## Quick Facts

| Item | Current implementation |
|:---|:---|
| Mod ID / namespace | `bsf3lite` |
| Display name | Better Snowball Fight 3 Reforged |
| Mod version | `1.0.0` |
| License | `GNU GPLv3` |
| Loader | NeoForge only — there is no Fabric source set |
| Minecraft | `26.1.2`, accepted range **`[26.1.2]`** (a single exact version) |
| NeoForge | built against `26.1.2.75` |
| Items | 61 registered |
| Blocks | 4 registered, 1 block entity |
| Entity types | 21 (3 mobs, 1 field executor, 17 snowballs) |
| Mob effects | 2 (`cold_resistance`, `weapon_jam`) |
| Enchantments | 3, defined as datapack JSON |
| Creative tab | `bsf3lite:bsf_tab`, icon `bsf3lite:explosive_snowball` |
| Recipes | 62 JSONs — 53 shaped, 6 shapeless, 3 smithing transform |
| Advancements | 13 JSONs, rooted at `bsf3lite:root` |
| Sound events | 107 — 20 functional plus `memesound00`–`memesound86` |
| Configs | one SERVER file (7 options) and one CLIENT file (1 option) |
| Commands | none |
| Key bindings | 2, in category `bsf3lite:main` |

::: warning
`minecraft_version_range` is `[26.1.2]`, not a range. This build declares compatibility with exactly one Minecraft version and will refuse to load on any other `26.x`.
:::
