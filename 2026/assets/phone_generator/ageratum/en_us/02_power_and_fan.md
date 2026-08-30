---
title: Power and the Fan
navigation:
  title: Power and the Fan
description: How levels become Forge Energy, and the Small Fan's spin-up, launch and flight mechanics.
---

# Power and the Fan

## Levels become energy

The phone side produces a **level**; `powerLevelMap` turns that into FE:

| Level | Default FE |
|---:|---:|
| 1 | 100 |
| 2 | 500 |
| 3 | 2000 |
| 4 | **5000** |

Two rules matter:

- The list is **index-based** — index 0 is level 1.
- **Levels beyond the list reuse the last value.** With the default four-entry list, level 5 and level 40 both produce 5000 FE. If you want the curve to keep climbing, extend the list.

The generator buffers up to `energyBufferCapacity` (default **100000** FE) and pushes at most `pushEnergyPerTick` (default **100**) to adjacent blocks per tick.

::: tip
Those two defaults are worth reading together: a 100000 buffer drained at 100 FE/tick takes **1000 ticks — 50 seconds — to empty**. So the generator behaves as a large reservoir with a modest tap, and raising `pushEnergyPerTick` is what makes it feel responsive rather than raising the buffer.
:::

The block face animates while producing: there are **nine active side textures** (`generator_side_act1` … `act9`) plus an inactive one, and separate active/inactive tops — so the animation frame is a visual readout of activity.

## The Small Fan

The `motor_block` ("Small Fan") is a second block that **consumes** the energy. It has its own config section with twelve options, and its behaviour has three distinct phases.

### Phase 1 — spin-up

| Option | Default | Meaning |
|:---|---:|:---|
| `fan.motorCapacity` | 500 | FE the motor can hold |
| `fan.motorMaxInsert` | 80 | FE accepted per insert |
| `fan.energyPerTick` | 80 | FE consumed per tick while spinning up |
| `fan.rpmPerEnergy` | 0.006 | RPM gained per FE consumed |
| `fan.rpmFriction` | 0.05 | RPM lost per tick when no FE available |

At 80 FE/tick × 0.006 RPM/FE the motor gains **0.48 RPM per tick** — so reaching the launch threshold of 100 RPM takes roughly **209 ticks (about 10.5 seconds)** of uninterrupted supply.

::: warning
**A generator alone cannot sustain the fan.** The fan wants 80 FE/tick while the generator pushes only 100 FE/tick by default — that works, but leaves almost no margin, and `rpmFriction` bleeds 0.05 RPM every tick the supply lapses. If the phone-side level drops or the connection blips, spin-up stalls and slowly reverses.
:::

### Phase 2 — launch

At `fan.launchThreshold` (default **100.0** RPM) the motor **spawns a fan blade entity** (`phone_generator:fan_entity`). After launching it waits `fan.cooldownTicks` (default 60) before it can spawn another.

### Phase 3 — flight

The blade carries the accumulated RPM and converts it to thrust:

| Option | Default | Meaning |
|:---|---:|:---|
| `fan.fanThrustFactor` | 0.006 | Thrust per RPM per tick |
| `fan.fanRpmDecayFactor` | 0.985 | RPM multiplier each tick (**1.5% decay per tick**) |
| `fan.fanSettleSpeed` | 0.02 | Y-velocity below which it counts as settled |
| `fan.fanSettleTicks` | 40 | Consecutive settled ticks before it despawns |

**The decay is exponential, so flight is front-loaded.** At 0.985 per tick, RPM halves in about 46 ticks (~2.3 s) and is down to a quarter in about 92. Whatever the blade is going to do, it does in the first couple of seconds.

The blade despawns after 40 consecutive ticks below the settle speed — so a blade resting on the ground clears itself rather than lingering.

## Putting the two together

The interesting build is a chain: **phone activity → generator → Small Fan → launched blade**. Because every number above is configurable, the fan can be tuned from "briefly hops" to "genuinely throws you", and the honest constraint is the generator's 100 FE/tick tap rather than anything on the fan side.

[Back to index](index)
