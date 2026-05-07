---
title: Current Limits and Project Status
navigation:
  title: 02 Current Limits and Project Status
---

# Current Limits and Project Status

## Not Implemented

The current source has none of these player features:

- A Road Builder GUI or right-click action.
- Tools to select, drag, connect, or delete control points.
- Actual roads, roadbeds, junctions, surface collision, or vehicles.
- An x3d Map planning interface.
- Road commands, key bindings, or effective configuration values.
- Survival recipes, loot, or natural generation.

The project's `plan.md` describes packers, multiblocks, roads, and map planning, but those entries remain unchecked plans and are not current gameplay.

## Registry Boundary

Generated resources still contain language, model, and blockstate files for `example_item` and `example_block`, but the Java registries do not register either ID. Do not try to obtain them with commands or use those resources as evidence for recipes or documentation bindings.

The configuration class currently builds an empty specification. A generic client configuration screen can open, but it contains no Roads options to change.

## Display and Language Issue

The English language file labels the Creative tab "Example Mod Tab", which is placeholder translation text. It does not mean a second example mod is present. The generated Chinese language labels that tab Roads.

::: warning
The Road Builder is useful for observing the current curve-rendering experiment, not for survival-server road construction. Do not rely on planned controls, collision, or drops in an important world.
:::

[Back to the Roads index](index)
