---
title: "Meta Parameters and Command Chains"
navigation:
  title: "05 Meta Parameters and Command Chains"
---

# Meta Parameters and Command Chains

## Chaining particles

Place the literal `expireThen` after one complete `/mp` segment and follow it with another `/mp` argument sequence. When the parent expires, it creates the child. The Designer displays each segment in its chain list and assembles the parent-child structure from the end backward.

Chains can continue, but every segment still contains the full fixed argument set. The deeper the chain, the harder it is to budget packets, memory, and later spawn counts. If the parent spawns several particles, each parent may continue its own child chain.

## Meta placement

After all fixed arguments, the command can add `whoCanSee` and then an SNBT compound as `meta`. Without meta, the mod uses an empty compound and internal defaults. The command tree accepts meta only after a viewer selector, so the selector cannot be omitted when meta is needed.

Meta keys are case-sensitive. Expression values are SNBT strings, such as `dx:"sin(t*6.283)"`; booleans use `true` or `false`, and integer values are unquoted.

## Current meta keys

| Key | Type | Current purpose |
|:---|:---|:---|
| `life` | Integer | Lifetime random-error percentage, default `10` |
| `dx` / `dy` / `dz` | String | Add per-axis movement from a lifetime expression |
| `light` | String | Produce light levels from `0` through `15` over lifetime |
| `disappearOnCollision` | Positive integer | Remove after the specified collision count |
| `preCalculate` | Boolean | Simulate and record the full path up front |
| `tenet` | Boolean | Simulate first, then replay the path in reverse |
| `halfPrecision` | Boolean | Send many floating-point fields at half precision |
| `indexed` | Boolean | Use indexed command transport when its conditions are met |
| `tada` | Boolean | Emit from the command-source player's handheld nozzle |
| `pulse` | Boolean/integer | Mark a created Tada as pulse mode |

## Expressions and precomputation

Movement and light expressions support normalized lifetime variable `t`. The source prepares at most `min(lifetime, 100)` sampled segments, so a very long lifetime does not receive the same number of independent expression samples as ticks.

`preCalculate` simulates the entire life during creation and stores the path for playback. `tenet` reverses that record. Both allocate path arrays based on lifetime and should not be combined with extreme lifetimes and particle counts without a budget.

## Indexed transport

`indexed` is intended to avoid repeatedly transporting the same long command. Current code enables it only on particular dedicated-server paths and requires the client and server to maintain the same index. Development, single-player, and mismatched clients must not assume it is active. A Designer debug setting can highlight commands that did not use indexed transfer.

::: warning
`expireThen`, precomputation, reverse paths, and high `amount` values multiply one another's cost. Validate with one short-lived particle before scaling up.
:::

[Back to the MadParticle index](index)
