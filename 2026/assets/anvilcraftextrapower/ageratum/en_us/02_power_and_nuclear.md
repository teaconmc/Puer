---
title: Power and nuclear
navigation:
  title: Power and nuclear
---

# Power and nuclear

This mod adds several ways to produce and store power for AnvilCraft's energy grid, plus a nuclear line with a collector, uranium rods and the nuclear bomb.

## Solar panel

`solar_panel` (太阳能板) is a placeable power producer that works during the day. It requires a solid surface below it, and it refuses to be placed within a 3×3×3 space already containing another panel ("another panel is too close"). Its output equals the sky brightness minus the current sky-darkening (0–15), halved while it is raining, and is 0 at night. Placement is limited by spacing, not by line-of-sight occlusion.

Its crafting recipe uses a daylight detector, a sunflower and iron plates:

<recipe id="anvilcraftextrapower:solar_panel_from_circuit_board"/>

## Nuclear collector and uranium rods

The `nuclear_collector` (集核器) is the mod's high-output power producer. It implements `IPowerProducer` and feeds an AnvilCraft `PowerGrid`.

- It detects uranium rods in a 5×5×3 box around it and produces **rod-count × `powerOutput_of_a_uraniumRod`** power (default 150 per rod). A nuclear bomb or an AnvilCraft plutonium block in range also counts as one rod.
- Each detected rod is ignited (`ACTIVE = 5`). Rods also gain heat based on how much water is available.
- It must be cooled by water or ice above it; cooling drains the water/ice (water→air, blue ice→packed ice→ice→water). Without enough water the collector heats up fastest.
- When heat reaches 2/3 of the heat limit it is **overheating** and needs cooling; at the heat limit it is replaced by a mushroom cloud (a meltdown).
- Another collector within a 9×5×9 box around it stops it ("too close to another Nuclear Collector"), and with no rods nearby it reports "No uranium rods nearby".

`uranium_rod` (铀棒) is a 3-part block that acts as reactor fuel. When it is not under control it emits a wither (Wither II) effect to entities within 75 blocks. `frost_controller` (浮霜控制器) can be placed near rods to reduce their activity (5 − controller count, minimum 1), and redstone power disables it entirely.

Confirmed crafting recipes:

<recipe id="anvilcraftextrapower:nuclear_collector"/>
<recipe id="anvilcraftextrapower:nuclear_bomb"/>

## Nuclear bomb and mushroom cloud

`nuclear_bomb` (核弹) is an anvil-type block: dropping it from height makes it smash on landing, summoning a `mushroom_cloud` (蘑菇云) with a flash, screen shake, an explosion sound, and particles. The death message uses the `anvilcraftextrapower:nuclear_explosion` damage type ("%1$s was reduced to anvilon in the flash").

Note (current source): the mushroom-cloud code hard-codes `canGrief = false`, so the bomb currently produces animation/shake/flash/sound and clears nearby dropped items but does not actually damage blocks or entities. Expect this behavior to change in a future version.

## Energy storage

Battery and capacitor items are all tagged `anvilcraftextrapower:capacitor` and charge/discharge through an AnvilCraft charger:

| Item | Charger behavior |
|:---|:---|
| `lead_acid_battery` / `lead_acid_battery_empty` | Discharge turns the filled battery into the empty one (long low-power output); charging refills it from the empty form |
| `multiphase_capacitor` / `multiphase_capacitor_empty` | Discharge turns it into the empty capacitor; charging consumes `multiphase_matter` |
| `potato_battery` / `flashing_potato_battery` | A battery block (also wearable on the head). Dropped on fire/lava/red-hot blocks it turns into baked potato; struck by lightning it becomes the flashing variant, which discharges at very high power for a short time |

Confirmed crafting recipes:

<recipe id="anvilcraftextrapower:potato_battery"/>
<recipe id="anvilcraftextrapower:lead_acid_battery_empty"/>
<recipe id="anvilcraftextrapower:multiphase_capacitor_empty"/>
<recipe id="anvilcraftextrapower:multiphase_capacitor"/>

## Pedometer

`pedometer` (步进器) is registered with facing/progress/powered states, but in the current source the pedometer logic is not implemented: it has no active block entity and its progress is never advanced, so it does not yet count steps or output redstone.

[Back to index](index)
