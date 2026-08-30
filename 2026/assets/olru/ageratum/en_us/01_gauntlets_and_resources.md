---
title: "Gauntlets and Skill Resources"
navigation:
  title: "Gauntlets and Skill Resources"
---

# Gauntlets and Skill Resources

## Items

| Item | Display name (en / zh) | Stack size |
|:---|:---|:---|
| `olru:legacy_prime` | Legacy Prime / 传世经典 | 1 |
| `olru:legacy_of_horus` | Legacy of Horus / 荷鲁斯遗辉 | 1 |

Both items are registered with `stacksTo(1)` and have item models, item definitions and textures under `assets/olru/`. Neither item has a recipe, smelting output, enchantment contract, durability bar or equipment slot behavior; they are used directly from the main hand.

## Creative access

The mod registers one creative tab:

- Registry id: `olru:gauntlets_tab`
- Display name: `OLRU: Gauntlets` / `OLRU：拳套`
- Position: after the vanilla Combat tab
- Icon: Legacy Prime
- Contents: both gauntlets

## The five skill slots

Every `AbstractGauntletItem` owns the same five slot layout:

| Slot | Trigger | Prime example | Horus example |
|:---|:---|:---|:---|
| Normal attack | Left-click (main hand only) | Hand Cannon | Biotic Round |
| Skill one | Right-click, hold while charging | Rocket Punch | Field Extraction |
| Skill two | `Left Shift` default | Rising Uppercut | Sedative Dart |
| Skill three | `V` default | Seismic Slam | Biotic Grenade |
| Ultimate | `X` default | Meteor Strike | Nano Surge |

A skill only executes when the server-side skill state says it is usable. Left-click is intercepted while any gauntlet is in the main hand; a click without usable ammo is consumed by the gauntlet and does not trigger a vanilla attack.

## Resource models

The server tracks five `SkillState` implementations per gauntlet:

- `IncrementalChargeState`: refills one charge after each interval. Legacy Prime Hand Cannon starts with 0 charges and gains one every 12 ticks until the 4-charge cap.
- `FullChargeState`: refills the whole pool at once. Legacy of Horus Biotic Round gains all 6 charges after one 60-tick interval.
- `CooldownSkillState`: a plain cooldown timer; most active skills use this.
- `ConditionalChargeState`: an ultimate bar with no timer. It fills from combat events and is consumed to zero when used.

These states are stored in the `olru:gauntlet_state` player attachment, which is serialized into player data and synchronized to the client. The server ensures both gauntlet groups exist for players who carry either gauntlet in the main hand, offhand or non-equipment inventory; missing groups are created on login and after dimension changes. If the group is present but no longer bound to current config, the server rebuilds it and copies only runtime counters across.

**Note:** the initial charge state means a freshly obtained gauntlet is not immediately fully armed. Hand Cannon needs 12 ticks for its first charge and Biotic Round needs 60 ticks to refill all six rounds.

[Back to index](index)
