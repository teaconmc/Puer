---
title: "Blocks, Items and Technical Notes"
navigation:
  title: "03 Blocks, Items and Technical Notes"
---

# Blocks, Items and Technical Notes

The complete registry, how each piece is obtained, where portal data lives, and the rough edges worth knowing.

## The registry, in full

| Kind | Id | Notes |
|:---|:---|:---|
| Block | `link_portals:portal_frame` | The ring material; crying obsidian is accepted as an alternative |
| Block | the portal block | The lit surface inside the ring; not obtainable as an item |
| Item | `link_portals:portal_activator` | Right-click a ring to light it; **the only item in the creative tab** |
| Item | `link_portals:portal_frame` | Block item — **in no creative tab** |
| Block entity | one, for the portal | Carries the portal's identity |
| Creative tab | `link_portals` | Contains the activator only |

Twenty Java files in total. There are **no entities, no commands and no key bindings**.

## Obtainability is the practical limit

::: danger
**This checkout has no `data/` directory at all** — so there are no recipes, no loot tables and no advancements for anything.

Combined with the creative tab holding only the activator, that means:

| To get | How |
|:---|:---|
| Portal Activator | Creative tab, or `/give` |
| Portal Frame block | **`/give` only** — it is in no tab, so creative search will not show it |
| A working ring in survival | **Vanilla crying obsidian**, which the mod accepts wherever it accepts its own frame block |

The crying-obsidian path is the only route that does not require creative or commands. See [Getting started](01_getting_started).
:::

## Where portal data lives

Portals are stored in **level saved data** under the id `link_portals:portal_network`, serialised through a Codec. Two maps are kept:

| Map | Purpose |
|:---|:---|
| portal id → portal info | The record for each portal |
| block position → portal id | Reverse lookup, so a portal block knows which portal it belongs to |

Each portal's record holds its **id, dimension, spawn position, network name, portal name and facing**. Both maps are keyed by strings on disk (ids and positions are stringified for serialisation) and reconstructed on load.

Two consequences:

- **Portal data is per-world, not per-player.** Networks are shared world state; anyone can use a portal they did not build.
- **Spawn position and facing are captured at activation.** They are fields in the record, not recomputed on arrival — which is why re-activating is the fix when arrivals go wrong. See [Travelling between portals](02_travelling_between_portals).

## Networking

Four payloads carry the interaction, all tied to the two screens:

| Payload | Direction and role |
|:---|:---|
| Open naming screen | Server tells the client to open the naming screen |
| Confirm portal name | Client sends the chosen network and portal names back |
| Open portal screen | Server tells the client to open the destination list |
| Choose destination | Client sends the picked destination back |

The pattern is the correct one — **the server drives screen opening and receives the choice**, rather than the client deciding on its own.

## ⚠️ The config file is MDK boilerplate

The mod ships a config class, but it is the **unmodified NeoForge MDK example**. Its own source comment still reads *"An example config class… Demonstrates how to use Neo's config APIs."* The four options are:

| Option | Default | What it does for this mod |
|:---|:---|:---|
| `logDirtBlock` | `true` | **Nothing related to portals** |
| `magicNumber` | `42` | **Nothing related to portals** |
| `magicNumberIntroduction` | `"The magic number is... "` | **Nothing related to portals** |
| `items` | `["minecraft:iron_ingot"]` | **Nothing related to portals** |

::: warning
**Opening this mod's config screen shows "Log Dirt Block" and "Magic Number", not portal settings.** None of the four options affects portals, and conversely **no portal behaviour is configurable** — frame sizes, accepted materials, travel rules and network handling are all fixed in code.

If you were looking for a way to restrict portal building or change frame requirements on a server, there is none. This is worth knowing before planning around it.
:::

## Localization gaps

Both language files exist but they are **not equivalent**, and the differences run in both directions:

| Finding | Consequence |
|:---|:---|
| `en_us` has **14** keys, `zh_cn` has **16** | Not a simple translation lag |
| **`en_us` is missing `item.link_portals.portal_frame`** | On an English client the **frame block's item form shows the raw key** — the block name is translated, the item is not |
| `zh_cn` has `item.link_portals.ice_ether` | An **orphan key for unregistered content**; no such item exists in the registry, and the value is untranslated English anyway |
| All four config labels are English in **both** files | Consistent with the config being MDK boilerplate |

The missing English item key is the one with a visible effect in play.

## Summary of rough edges

| Edge | Impact |
|:---|:---|
| No `data/` at all | No recipes, loot or advancements; crying obsidian is the survival route |
| Frame item in no creative tab | `/give`-only |
| Config is MDK boilerplate | No portal setting is configurable |
| `en_us` missing the frame item key | Raw key shown on English clients |
| `zh_cn` orphan `ice_ether` key | Harmless leftover |
| Spawn/facing fixed at activation | Re-activate after moving a ring |
| Empty network name → `default` | Unnamed portals all share one network |

None of these prevents the mod from working — the portal system itself is complete and does what the name says. They are the things a player or server owner would otherwise discover by surprise.

[Back to the index](index)
