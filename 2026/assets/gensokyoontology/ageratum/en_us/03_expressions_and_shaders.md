---
title: "Expressions and Shaders"
navigation:
  title: "03 Expressions and Shaders"
---

# Expressions and Shaders

Two engineering layers sit under the danmaku system: an **embedded expression language** for describing trajectories, and a **shader set** for drawing them.

## An expression system as a real registry

The mod creates its own registry — key `gensokyoontology:expression` — holding `IExpressionType`:

```java
public static final ResourceKey<Registry<IExpressionType>> KEY =
    ResourceKey.createRegistryKey(GSKOUtil.key("expression"));
public static final Registry<IExpressionType> REGISTRY = new RegistryBuilder<>(KEY)…
```

Registered types:

| Type | Class |
|:---|:---|
| `binary` | `BinaryExpression` |
| `lambda` | `LambdaExpression` |
| `param` | `ParamExpression` |

::: info
**Binary operations, lambdas and parameters is the vocabulary of a small functional expression language.** Combined with the three-axis rail editor from [Danmaku and spell cards](02_danmaku_and_spellcards), this is how a bullet path becomes a computed function rather than a fixed animation.

Because it is a proper `Registry`, other mods could in principle register additional expression types.
:::

::: warning
**`ClosureExpression` has a holder but no registration.** The source contains:

```java
public static final DeferredHolder<IExpressionType, ClosureExpression> CLOSURE_EXP =
    DeferredHolder.create(KEY, GSKOUtil.key("closure"));
// EXPRESSIONS.register("closure", () -> new ClosureExpression(new ArrayList<>()));
```

The `DeferredHolder` is live; **the matching `register` call directly beneath it is commented out.** A `DeferredHolder` pointing at an unregistered id resolves to nothing.

**This page does not assert what happens if closure expressions are used** — that depends on whether any code path reaches `CLOSURE_EXP`. But the asymmetry is real and worth knowing if closures behave unexpectedly: the holder exists, the registration does not.
:::

## Four shader programs

`assets/gensokyoontology/shaders/` contains four complete vertex + fragment pairs:

| Program | `.vsh` + `.fsh` | Evidently for |
|:---|:---:|:---|
| **`master_spark`** | ✓ | The signature beam attack |
| `dream_sphere` | ✓ | A spherical effect |
| `light_column` | ✓ | Vertical light shafts |
| `circle_gradient` | ✓ | Radial gradients |

## Six GLSL include libraries

The shaders share a genuine library layer under `shaders/include/`:

| Include | Provides |
|:---|:---|
| `fast_noise_lite.glsl` | A FastNoiseLite port |
| `fbm_lib.glsl` | Fractal Brownian motion |
| `fnl_voronoi_2d.glsl` | 2D Voronoi |
| `fnl_voronois_3d.glsl` | 3D Voronoi |
| `simple_cellular_noise.glsl` | Cellular noise |
| `utils.glsl` | Shared helpers |

::: tip
**This is a substantial amount of custom rendering for a content mod.** FBM plus 2D and 3D Voronoi is the toolkit for procedural, animated, non-repeating visuals — the difference between a beam that is a scrolling texture and one that visibly churns.

Fourteen shader files against zero datapack files is a fair summary of where this mod's effort went: **rendering and simulation in code, nothing in data.**
:::

::: info
The filename `fnl_voronois_3d.glsl` contains a stray plural ("voronois"). It is an include path referenced by the shaders, so **the spelling must match wherever it is `#include`d** — not something to normalise.
:::

## What this means in play

You cannot edit any of this from a datapack — there are no recipe or trajectory JSONs to override. The expression registry is a code-level extension point, and the shaders are GLSL assets a resource pack could replace. **Between those two, the shaders are the only part a pack author can realistically retheme.**

[Back to index](index)
