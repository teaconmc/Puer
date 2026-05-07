---
title: Geology Layers
navigation:
  title: Geology Layers
description: What a geology layer is, its five tunable numbers, and the exact values of all 14 registered layers.
---

# Geology Layers

A **geology layer** is the atom of Craton's underground. It is a datapack-registered object with five numbers plus a block.

## Layer fields

| Field | JSON key | Default | Meaning |
|:---|:---|:---|:---|
| block state | `block` | (required) | The block this layer is made of. |
| thickness | `thickness` | 24.0 | How thick the layer is. |
| amplitude | `amplitude` | 12.0 | How far the layer boundary wanders up and down. |
| frequency X | `freq_x` | 0.01 | Noise frequency along X. |
| frequency Z | `freq_z` | 0.01 | Noise frequency along Z. |
| seed | `seed` | 0 | Per-layer noise offset. |

Because each layer carries its **own** seed and frequencies, boundaries between neighbouring layers do not run parallel — they cross and pinch, which is what makes the strata look geological rather than like a layer cake.

## Layers built from vanilla blocks

| Layer | Block | Thickness | Amplitude | freq X | freq Z | Seed |
|:---|:---|:---|:---|:---|:---|:---|
| `deepslate` | deepslate | 48 | 8.0 | 0.006 | 0.009 | 77 |
| `stone` | stone | 28.0 | 8.0 | 0.006 | 0.009 | 11 |
| `granite` | granite | 24.0 | 14.0 | 0.008 | 0.011 | 22 |
| `diorite` | diorite | 22.0 | 12.0 | 0.009 | 0.010 | 33 |
| `andesite` | andesite | 26.0 | 10.0 | 0.007 | 0.012 | 44 |
| `tuff` | tuff | 20.0 | 16.0 | 0.011 | 0.008 | 55 |
| `basalt` | basalt | 30.0 | 9.0 | 0.006 | 0.007 | 66 |
| `gravel` | gravel | 5 | 4 | 0.006 | 0.007 | 18 |

## Layers built from Craton rocks

| Layer | Thickness | Amplitude | freq X | freq Z | Seed |
|:---|:---|:---|:---|:---|:---|
| `gabbro` | 30.0 | 8.0 | 0.006 | 0.010 | 101 |
| `gneiss` | 24.0 | 18.0 | 0.008 | 0.012 | 202 |
| `limestone` | 26.0 | 10.0 | 0.010 | 0.006 | 303 |
| `marble` | 22.0 | 14.0 | 0.009 | 0.011 | 404 |
| `rhyolite` | 28.0 | 12.0 | 0.012 | 0.007 | 505 |
| `pegmatite` | 12.0 | 6.0 | 0.004 | 0.005 | 606 |

Each of these uses the **raw finish base block** of the matching rock type.

## Reading the numbers

Some patterns worth noticing:

- **`deepslate` is by far the thickest (48)** with low amplitude — it behaves as the deep basement everything else sits on.
- **`gravel` is the thinnest (5) with the smallest amplitude (4)** — a thin, relatively flat band rather than a mass.
- **`pegmatite` is deliberately thin (12) with the lowest frequencies** — broad, gently varying, and rare in the profiles that use it. It appears in only one profile; see [Geology profiles](03_geology_profiles.md).
- **`gneiss` has the highest amplitude (18)** — its boundaries wander the most, so gneiss layers look the most contorted.

[Back to index](index)
