---
title: The Computation System
navigation:
  title: The Computation System
description: Parallel cores, threading cores, a coolant loop and an overclock switch.
---

# The computation system

This is the addon's flagship multiblock and the reason it exists. AE2 gives you a crafting CPU whose only variable is how many co-processors you bolt on. This replaces that with a machine you have to engineer.

## The parts

| Block | Tiers | Role |
|:---|:---|:---|
| **`computation_system`** | `l4` / `l6` / `l9` | the controller |
| **`computation_parallel_core`** | `l4` / `l6` / `l9` | how many jobs run at once |
| **`computation_threading_core`** | `l4` / `l6` / `l9` | throughput within a job |
| **`computation_cooling_controller`** | `l4` / `l6` / `l9` | manages the coolant loop |
| `computation_drive` | — | holds computation media |
| `computation_transmitter` | — | links the system to your ME network |
| `computation_interface` | — | the access point |
| `computation_casing` | — | structural filler |

Two separate core types is the key design decision. **Parallel cores** and **threading cores** are distinct blocks with distinct tiers, so "more jobs at once" and "each job faster" are things you buy separately rather than one slider.

## Tiers are 4 / 6 / 9

The tier suffixes are `l4`, `l6` and `l9`, and the interface carries matching status textures. Build the tier your casings support: aluminum alloy for the lower end, black tungsten alloy for the top.

## The coolant loop is real

The computation interface's textures tell you exactly what the machine tracks:

| Element | Meaning |
|:---|:---|
| **coolant progress** | how much cold coolant remains |
| **hot coolant progress** | how much has been spent |
| **cooling on / off** | a toggle you control |
| **limit progress** | how close the system is to its ceiling |
| **parallel status** | which parallel capacity is active |

So the cooling controller is not decorative. Cores generate heat, cold coolant is consumed, and hot coolant accumulates — which means a computation system needs a **coolant supply**, not just power and channels.

The coolant is **Cryotheum Solution**, which the addon registers as a fluid with a block and a bucket, and it ships **two `neoecoae:cooling` recipes** of its own — the addon's own recipe type for producing or regenerating coolant.

Fluid handling is why the crafting side has **`input_hatch`** and **`output_hatch`** blocks: coolant goes in, spent coolant comes out.

## Overclocking

The interface also carries **overclock on / off** states. An overclock switch alongside a cooling gauge is a familiar contract: more throughput, more heat, more coolant burned. The addon gives you the switch and the gauge and lets you decide.

If your system stalls, check the hot coolant bar before you add cores.

## How it connects

`computation_transmitter` is the block that joins the system to your ME network. That separation matters: the computation multiblock is not itself an ME device — it is a machine you attach, which is why it can be built and tiered independently of your network layout.

`computation_drive` holds the media the system works with, in the same way an AE2 drive holds cells.

## Building advice

- **Cool before you scale.** A cooling controller at a tier below your cores is the most likely reason a system underperforms.
- **Parallel and threading are not interchangeable.** If you run many small jobs, buy parallel; if you run few large ones, buy threading.
- **Plumb the hatches.** A computation system without a coolant route will run until its cold coolant is gone and then stop.
- **The transmitter is the only network link.** One transmitter, one connection point — plan channel budget accordingly.

## What it changes for crafting

A computation system is what makes the [crafting fast path](03_crafting_system) worth having: batching requests only helps if something can execute several of them at once. The two systems are designed to be built together.

[Back to index](index)
