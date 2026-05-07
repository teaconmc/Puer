---
title: The Crafting System
navigation:
  title: The Crafting System
description: Pattern bus, workers, vents, fluid hatches — and a batch fast path that changes how requests execute.
---

# The crafting system

## The parts

| Block | Tiers | Role |
|:---|:---|:---|
| **`crafting_system`** | `l4` / `l6` / `l9` | the controller |
| **`crafting_parallel_core`** | `l4` / `l6` / `l9` | simultaneous work |
| **`crafting_pattern_bus`** | — | holds the patterns |
| **`crafting_worker`** | — | does the crafting |
| `crafting_vent` | — | heat exit |
| `crafting_interface` | — | access point |
| `crafting_casing` | — | structural filler |
| `input_hatch` / `output_hatch` | — | fluid in and out |

Note the shape: **patterns live in a bus, work is done by workers, and heat leaves through vents.** AE2 keeps patterns in an interface and work in the CPU; here they are separate blocks you place and scale independently.

The blockstate list includes `casing_formed`, `pattern_bus_formed` and `vent_north_formed` variants, so the multiblock **visibly changes appearance once assembled correctly** — a useful build check.

## The batch crafting fast path

This is the part that makes the addon fast, and it is invisible from the outside.

The addon implements a dedicated fast path for crafting execution:

| Component | Purpose |
|:---|:---|
| **batch crafting request** | groups work rather than issuing it item by item |
| **batch crafting work** | the batched unit of execution |
| **fast path cache** | remembers resolved paths so they are not recomputed |
| **extracted pattern execution** | runs a pattern that has already been pulled out and prepared |
| fast path key / result / stacks | the cache's key and payload types |

The practical effect: where AE2 walks each crafting step individually, this **resolves and caches the route, then executes batches**. That is why the addon's own description says "higher-performance" rather than "bigger".

Two consequences worth knowing:

**A cache means the first request of a kind is the slow one.** Repeated identical requests benefit most.

**Batching interacts with parallel cores.** A batch is only useful if something can execute several units concurrently, which is what parallel cores in both the crafting and [computation](02_computation_system) systems provide.

## Pattern encoding is patched

Two of the addon's mixins target AE2's pattern encoding terminal — one on the menu and one on the screen. So the addon extends what you can encode, at the terminal you already use, rather than adding a parallel encoding device.

Another mixin accesses AE2's crafting pattern internals directly, which is the mechanism behind extracted pattern execution.

## Crafting status is patched too

Four mixins touch AE2's crafting status and CPU selection interfaces:

- the CPU selection list and its entries,
- the crafting CPU menu,
- the crafting status menu.

That is how the addon's systems appear alongside AE2's own CPUs in the interfaces you already know — you do not learn a separate monitoring screen.

## Fluids in a crafting system

The `input_hatch` and `output_hatch` blocks are fluid hatches shared with the [computation system](02_computation_system). A crafting system that runs hot needs the same coolant plumbing, and the interface carries the same coolant and hot-coolant gauges.

## Building advice

- **Watch for the `formed` textures.** If your casing still shows the unformed variant, the multiblock is not valid.
- **Add pattern bus capacity before parallel cores.** Cores with nothing to run are wasted.
- **Vents need space.** They are the heat exit; the blockstates carry directional vent variants.
- **Build the computation system alongside.** The fast path's batching pays off in proportion to concurrent execution capacity.

[Back to index](index)
