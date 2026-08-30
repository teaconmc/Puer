---
title: "Getting Started"
navigation:
  title: "01 Getting Started"
---

# Getting Started

Everything in this mod starts from snow. You compress snow into snowballs, you store snowballs in tanks, and you feed tanks into launchers.

## Where to Find It

All items live in one creative tab, `bsf3lite:bsf_tab`, titled **Better Snowball Fight Reforged**. Its icon is the Explosive Snowball, and it is inserted before the vanilla Spawn Eggs tab.

There are no commands, so in survival the creative tab and the crafting recipes are the whole entry point.

## The First Snowball

The mod's own snowball line does not begin with the vanilla snowball. It begins with a **clamp**:

1. Craft any Snowball Clamp — the wooden one is the cheapest.
2. Use it on snow to compress a **Smooth Snowball**.
3. Hand-press a **Compacted Snowball** for a denser projectile, or combine four into a **Compacted Snowball Set** that throws three at once.

The seven clamps differ only in tool material and durability:

| Clamp | Material | Durability |
|:---|:---|:---|
| Wood Snowball Clamp | wood | 118 |
| Gold Snowball Clamp | gold | 64 |
| Stone Snowball Clamp | stone | 260 |
| Iron Snowball Clamp | iron | 500 |
| Emerald Snowball Clamp | emerald (mod-added tool material) | 2866 |
| Diamond Snowball Clamp | diamond | 3122 |
| Netherite Snowball Clamp | netherite | 4062 |

Note the gold clamp: at **64** uses it is by far the most fragile, well below even wood, exactly as vanilla gold tools behave.

## Vanilla Snow Still Works

The mod does not replace vanilla snowballs. It adds a `minecraft:block/snow` tag entry and a `mineable/shovel` entry, and its weapons accept the mod's own snowball items as ammo. The vanilla snowball keeps its own uses — feeding an Advanced Snow Golem a plain snowball switches the golem's skin.

## What Is Registered

| Category | Count | Notes |
|:---|:---|:---|
| Items | 61 | 17 snowballs, 2 tanks, 7 clamps, 9 launchers, gear, cores, food, golem tools |
| Blocks | 4 | `loose_snow_block`, `snow_trap`, `critical_snow`, `smart_snow_block` |
| Block entities | 1 | `critical_snow` |
| Entity types | 21 | `bsf_snow_golem`, `hostile_snow_golem`, `bsf_dummy`, `powder_executor`, 17 snowballs |
| Mob effects | 2 | `cold_resistance`, `weapon_jam` |
| Particles | 6 | two snowflake sizes, two field particles, implosion, golem equip |
| Data components | 9 | ammo, sculk sound id, basin snow type, machine gun timer and cooldown, region, two tweaker modes, golem data |

## Metadata Facts

| Field | Value |
|:---|:---|
| Mod ID | `bsf3lite` |
| Version | `1.0.0` |
| License | `GNU GPLv3` |
| Group | `com.linngdu664.bsf3lite` |
| Minecraft | `26.1.2`, range `[26.1.2]` |
| NeoForge | `26.1.2.75` |
| Loader support | NeoForge only |

::: info
Because the whole mod is NeoForge-only and pinned to one exact Minecraft version, there is no Fabric build to look for and no point trying it on a neighbouring `26.x` release.
:::

[Back to the index](index)
