---
title: "Controls and HUD"
navigation:
  title: "Controls and HUD"
---

# Controls and HUD

## Key bindings

The mod registers one key category, `OLRU` (`key.categories.olru.category`), with three `IN_GAME` bindings:

| Binding | Default key | Action |
|:---|:---|:---|
| `key.olru.skill_two` | `Left Shift` | Skill 2 |
| `key.olru.skill_three` | `V` | Skill 3 |
| `key.olru.ultimate` | `X` | Ultimate |

Left-click and right-click are not registered as key mappings. The interaction handler intercepts the vanilla attack key when a gauntlet is in the main hand.

All gauntlet input is main-hand only:

- The client checks `player.getMainHandItem().getItem()` each tick.
- Holding a gauntlet in the offhand does not make the skill keys, HUD or attack interception work.
- Skill-key clicks are drained (discarded) whenever the player is not in game or is not holding a gauntlet.

While a gauntlet is held, left-click is canceled and sent to the server as a normal-attack payload. During Meteor Strike hover, left-click is instead sent as a movement-task action that triggers an early fall. Right-click starts item use; the use duration is 72000 ticks, and the held item disables gravity and zeroes the player’s velocity while charging.

## HUD

`olru:gauntlet_hud` is registered as an always-on-top GUI layer. It appears only when the main hand holds a gauntlet and no screen is open:

- A primary ammo rail on the left shows the normal-attack pool (charge pips plus refill progress).
- Four skill slots show Skill 1, Skill 2, Skill 3 and Ultimate with key badges below them.
- Cooldown slots show a downward fill and a seconds counter; charge pools show pips; conditional ultimates show a progress bar.
- Holding the chargeable skill adds top/bottom charge bars and a full-charge outline.
- Active movement tasks pulse the corresponding slot border.

The HUD theme changes per gauntlet: Legacy Prime uses gold/orange, Legacy of Horus uses cyan/green. Until the server-synced skill group arrives, the HUD renders placeholder frames and question-mark icons.

## Tooltips

Both gauntlets append a compact tooltip header that states the gauntlet style. Without Shift, the tooltip says `[Shift] Show skill details`. With Shift held, each skill shows its key badge, name, mechanic, resource type, timing and key stats. The displayed numbers are read from the live server config values, not hard-coded text.

## Configuration screen

The client registers NeoForge’s `ConfigurationScreen` as the mod’s config screen factory. The underlying config is registered as a server config, so the effective values are the server’s `olru-server.toml` values; the on-screen numbers and in-game tooltips both reflect those values.

## Sync-pending behavior

Skill state is delivered through the `olru:gauntlet_state` attachment sync. The client-side group is only a network mirror; its tick method does not run local cooldowns. If the mirror has not arrived yet, the HUD shows placeholders and skill input is still forwarded to the server, which is the only authority that consumes charges.

[Back to index](index)
