---
title: "Scope, Localization and Networking"
navigation:
  title: "08 Scope, Localization and Networking"
---

# Scope, Localization and Networking

This page exists because the bundled language file is much larger than the mod. If you judge this build by its translation strings — or by an older wiki, or by a resource-pack dump — you will expect roughly three times the content that actually exists.

## The Lite Build

The mod id is `bsf3lite`. Its language file carries **176** item name keys, but only **61** items are registered. The other **116** keys name content that this build does not contain:

| Category | Lang keys with no registered item |
|:---|:---|
| Per-type storage tanks | **64** — one `*_snowball_tank` and one `large_*_snowball_tank` for every snowball type |
| Tracking snowballs | 6 — light / heavy / explosive, against monsters and against players |
| Gravity and repulsion snowballs | 4 — monster and projectile variants of each |
| Exotic snowballs | 8 — gold, glass, black hole, subspace, thrust, ender, impulse, ghost |
| Golem cores | 9 — thrust, swiftness, regeneration, critical, repulsive field, three teleportation kinds, movement prediction |
| Golem core handling | 2 — core remover, blank core |
| Team linkers | 16 — one per dye colour |
| Minigame items | 5 — scoring device, suspicious USB flash drive, target locator, tracking core, vector inversion anchor |
| Basin states | 2 — Basin of Snow, Basin of Powder Snow |

The same gap appears in the other registries. The language file names four blocks that are not registered (Vending Machine, Region Controller, Region Controller Terminal, Region Player Inspector), five field-generator entities of which only the Powder Diffuser exists, a Targeting Snowball entity, and a third mob effect called **Wallhack**. A search of the entire Java source for `wallhack`, `vending_machine`, `region_controller`, `scoring_device`, `target_locator` and `tracking_core` returns **zero** occurrences — these are text-only leftovers, not disabled features.

The most visible consequence is the whole **minigame layer**: the language file contains a full economy and anti-cheat vocabulary — Snow Crystals currency, rank requirements, purchase and recycle messages, region entry checks, "you have been kicked out of the region" notices, team join and leave broadcasts. None of that is implemented here. One survivor exists: `region_tool` **is** registered, so the region concept has a single tool with no blocks to point at.

::: warning
Do not plan a server around the scoring, team-linking or region system. It is entirely absent from this build; only its text remains. Similarly, do not promise players tracking, gravity, black-hole or subspace snowballs — the nine cores that would have fed them are not registered either, and the two cores that *are* registered (`repulsion_core`, `gravity_core`) currently have no consumer.
:::

## Localization Details

Four language files ship: `en_us.json` with **511** keys, and `zh_cn.json`, `zh_tw.json`, `zh_hk.json` with **510** each.

| Finding | Detail |
|:---|:---|
| The single missing key | `void.tooltip`, absent from all three Chinese files |
| Its English value | an **empty string** — it is a deliberate blank spacer line |
| Practical effect | none; the fallback is empty either way |
| Registered item with no name key | **`sculk_snowball`** |
| Un-namespaced keys | **211** of 511 carry no `bsf3lite` prefix |

Two of those deserve attention.

`sculk_snowball` is registered as a simple item but has no `item.bsf3lite.sculk_snowball` entry, so it displays as the raw key in any inventory that shows it. The *entity* has a name (`entity.bsf3lite.sculk_snowball` = "Sculk Snowball"); only the item was missed. It is normally produced and consumed by the Sculk Snowball Launcher, which is why the gap survived.

The 211 bare keys are a collision risk rather than a bug: names like `itemGroup.bsf_group`, `stone_snowball.tooltip`, `weapon.tip`, `core.tip`, `random_sound.tip` and `void.tooltip` sit in the global translation namespace with no mod prefix. Another mod that happens to define `weapon.tip` or `core.tip` will silently overwrite or be overwritten, depending on load order.

::: info
The ammo-compatibility indicator keys are spelled `lunch_yes_cannon`, `lunch_no_shotgun` and so on — "lunch" for "launch". Purely cosmetic in the source, but it will defeat a search for `launch`.
:::

## Networking

Nine payloads are registered under protocol version `"1"`.

| Direction | Payload | Purpose |
|:---|:---|:---|
| to client | `bsf3lite:forward_cone_particles` | Cone particle burst |
| to client | `bsf3lite:forward_rays_particles` | Ray particle burst |
| to client | `bsf3lite:implosion_snowball_cannon_particles` | Implosion effect |
| to client | `bsf3lite:screenshake` | Trigger screen shake |
| to client | `bsf3lite:toggle_moving_sound` | Start or stop a looping sound |
| to server | `bsf3lite:ammo_type` | Set a weapon's chosen ammo |
| to server | `bsf3lite:sculk_snowball_launcher_switch_sound` | Cycle the meme sound |
| to server | `bsf3lite:switch_tweaker_status_mode` | Cycle golem behaviour |
| to server | `bsf3lite:switch_tweaker_target_mode` | Cycle golem targeting |

Three of the four client-to-server handlers are written defensively: each one re-reads the player's **main-hand** item, checks it really is the expected item, and only then cycles a value within fixed bounds. A forged packet from a client not holding the tweaker or the launcher does nothing.

`bsf3lite:ammo_type` is the exception, and worth understanding precisely:

- it carries an item id **and a raw inventory slot index**, and the handler calls `getInventory().getItem(slot)` **without validating the index**, so an out-of-range value reaches vanilla inventory code directly;
- it does not require the weapon to be the held item, so it can write the ammo component onto any weapon anywhere in the sender's own inventory;
- the item id is unvalidated, so any registry item can be written into the ammo component.

That last point sounds worse than it is. Firing does **not** trust the component: both the ammo lookup and the projectile construction require an actual `AbstractBSFSnowballItem` stack — a matching loose stack or a tank whose stored type matches — before anything is launched. Setting the component to, say, TNT therefore yields a weapon that simply cannot fire, not a TNT launcher. The real exposure is the unchecked slot index and the ability to reconfigure your own weapons out of band.

::: info
Everything here operates on the sending player's own inventory, so there is no cross-player attack surface in the ammo packet. Compared with mods that let a packet act on arbitrary coordinates or arbitrary entities, this is a narrow issue — but a server operator auditing packet handlers should still know that one of the four does not bounds-check its index.
:::

## Client-Side State Note

The weapon HUD's previous / current / next ammunition stacks are stored as fields on the weapon **item instance**, commented in the source as client-only. Item objects are singletons shared by every stack of that type, so this is per-item-type display state rather than per-stack state. On a client there is only one local player, so it works — but it is not a pattern to copy if you are extending the mod.

[Back to the index](index)
