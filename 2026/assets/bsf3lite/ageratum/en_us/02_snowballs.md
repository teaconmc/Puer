---
title: "Snowballs"
navigation:
  title: "02 Snowballs"
---

# Snowballs

Seventeen snowball items are registered, each with a matching thrown entity. They split into a **normal** family, which is mostly about impact, and a **special** family, which changes the battlefield.

## Normal Snowballs

| Item | In-game name | What the item says it does |
|:---|:---|:---|
| `smooth_snowball` | Smooth Snowball | Formed by simple mould pressing |
| `compacted_snowball` | Compacted Snowball | Hand-pressed moulding |
| `compacted_snowball_set` | Compacted Snowball Set | Throws three compacted snowballs at once |
| `stone_snowball` | Stone Snowball | Embedded a stone |
| `iron_snowball` | Iron Snowball | Embedded an iron ingot |
| `ice_snowball` | Ice Snowball | Embedded an ice |
| `obsidian_snowball` | Obsidian Snowball | Embedded an obsidian |
| `explosive_snowball` | Explosive Snowball | Embedded a block of TNT |
| `cherry_blossom_snowball` | Cherry Blossom Snowball | Embedded a few cherry blossom petals |
| `duck_snowball` | Duck Snowball | Quack! |

The embedding line is a clean damage ladder — stone, iron, ice, obsidian — built by adding one material to a snowball. Both the stone and the ice variants have two recipes each, one from a Smooth Snowball and one from a vanilla snowball, so you can start from either.

The Duck Snowball is a joke projectile with its own `duck_sound` sound event.

## Special Snowballs

| Item | In-game name | Behaviour |
|:---|:---|:---|
| `spectral_snowball` | Spectral Snowball | Marks creatures in range with the glowing outline |
| `frozen_snowball` | Frozen Snowball | Freezes surrounding creatures and blocks |
| `critical_frozen_snowball` | Critical Frozen Snowball | Freezes powerfully and leaves Critical Snow behind |
| `powder_snowball` | Powder Snowball | Throws up a flurry of snowflakes that blocks sight |
| `expansion_snowball` | Expansion Snowball | Generates a short-lived hollow sphere |
| `reconstruct_snowball` | Reconstruct Snowball | Raises ephemeral snow walls along its trajectory |
| `icicle_snowball` | Icicle Snowball | Creates a giant ice spike |
| `sculk_snowball` | (see note) | Fired by the Sculk Snowball Launcher; makes noise on impact |

### Snow storage snowballs

Expansion, Reconstruct and Icicle snowballs are **snow storage** projectiles. Their shared tooltip states that they *instantly absorb the surrounding snow and store it inside when thrown* — the structure they build is made from snow they scooped up at launch, so an open snowfield gives a bigger result than a bare stone floor.

Their capacity and lifetime are server-configurable:

| Snowball | Capacity default | Lifetime default |
|:---|:---|:---|
| Reconstruct | `500` (max 1100) | `80` ticks |
| Icicle | `2147483647` | `80` ticks |
| Expansion | — | `80` ticks |

::: info
The Icicle Snowball's default capacity is `2147483647`, the maximum 32-bit integer. In practice that means "no capacity limit at all by default"; the option exists so a server can impose one.
:::

### Powder Snowball

The Powder Snowball spawns a **Powder Diffuser** (`bsf3lite:powder_executor`), a small fire-immune field entity that produces the sight-blocking flurry. It has its own `powder_snowball` sound event.

## Explosive Snowball and Griefing

The Explosive Snowball carries real TNT and, by default, **breaks blocks**. The server config option `explosiveDestroy` defaults to `true`.

::: warning
On any build you care about, set `explosiveDestroy` to `false` before handing out Explosive Snowballs. It is the single most destructive default in the mod, and the Implosion Snowball Cannon consumes Explosive Snowballs as its ammunition.
:::

## Recipes

Every snowball is craftable with vanilla recipe types, so they show up in the recipe book normally.

<recipe id="bsf3lite:explosive_snowball_from_snowball"/>

<recipe id="bsf3lite:frozen_snowball_1"/>

<recipe id="bsf3lite:icicle_snowball_1"/>

[Back to the index](index)
