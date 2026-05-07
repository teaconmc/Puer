---
title: Momentum
navigation:
  title: Momentum
items:
  - momentum:jet_booster
---

# Momentum（动量）

Momentum is a TeaCon 2026 entry by AkiraHane, group `com.akirahane.momentum`, targeting Minecraft 26.1.2 on NeoForge 26.1.2.64-beta. The checked-out source is version `1.2` under **All Rights Reserved**, and the mod id is `momentum`. Its declared description is "More flexible movement methods".

The mod replaces vanilla movement with a per-player state machine: every client tick it evaluates a set of movement states by priority and enters the highest matching one. Sliding, prone crawling, wall running, wall hanging, vaulting, mid-air dodging, break falls and swim dashes are all states of that machine, and a single toggle returns you to unmodified vanilla movement at any time.

## What is actually registered

The registry footprint is deliberately small — the mod is mostly behaviour, not content:

| Registry | Entries |
|:---|:---|
| Items | exactly one: `momentum:jet_booster` |
| Blocks / entities / block entities | **none** |
| Creative tabs | **none of its own**; the booster is inserted into the vanilla Combat tab |
| Recipes | one: `momentum:jet_booster` |
| Sound events | `momentum:jet1`, `momentum:jet2`, `momentum:jet3` |
| Data attachments | `momentum:momentum_enabled`, `momentum:movement_state` |
| Network payloads | three, under registrar version `1` |
| Key mappings | three, in the `momentum:category` category |
| Commands | **none** |

## Reading path

1. [01 Getting started](01_getting_started.md) — craft the Jet Booster, equip it, and turn maneuver mode on.
2. [02 Jet Booster](02_jet_booster.md) — the only item: stats, attributes, detection, and everything it unlocks.
3. [03 Ground movement](03_ground_movement.md) — walk, prone, slide and power jump.
4. [04 Wall movement](04_wall_movement.md) — wall climb, slide, run, hang, kick, and the two vaults.
5. [05 Air and water](05_air_and_water.md) — airborne, break fall, dodge, swim and swim dash.
6. [06 Controls and HUD](06_controls_and_hud.md) — key bindings, the key-hint overlay, camera offset and animations.
7. [07 Configuration](07_configuration.md) — the server and client files, and the dual-gate rule that governs every action.
8. [08 Multiplayer and good to know](08_multiplayer_and_limits.md) — the library you must install, what carries over, and the rough edges.

## The one rule to remember first

Every one of the seventeen action switches exists **twice** — once in the server config and once in the client config — and the action runs only when **both copies are enabled**. A feature that appears dead is most often disabled on the side you did not check. See [07 Configuration](07_configuration.md).

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / name | `momentum` / Momentum, v1.2, All Rights Reserved |
| Author / group | AkiraHane / `com.akirahane.momentum` |
| Version target | Minecraft 26.1.2 / NeoForge `[26.1.2.64-beta,)` |
| Movement states | 18 in total, including the vanilla fallback |
| Only item | `momentum:jet_booster` |
| Key bindings | `C`, `Shift`+`M`, `Shift`+`N` |
| Config files | server + client, with duplicated action switches |
| Optional integration | Curios (belt slot) |
| Commands | none |
