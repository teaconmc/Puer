---
title: "Performance and Compatibility"
navigation:
  title: "08 Performance and Compatibility"
---

# Performance and Compatibility

## Core configuration

Current `MadParticleConfig` client defaults include:

| Option | Default | Purpose |
|:---|:---:|:---|
| `maxParticleAmountOfSingleQueue` | `100000` | Capacity of each render queue |
| `limitMaxParticleGenerateDistance` | `false` | Always reject particles beyond twice view distance |
| `bufferFillerThreads` | `8` | Auxiliary render-buffer filling threads |
| `optimizeCommandBlockEditScreen` | `true` | Expand command-block input and add the Designer entry |
| `forceMaxLight` | `false` | Render every particle at light level `15` |
| `translucentMethod` | `DEPTH_FALSE` | Translucency method |

Amount per command, execution frequency, lifetime, and `expireThen` branches together determine the real peak. Raising queue capacity only retains more particles; it does not add CPU, GPU, or network capacity.

## Rendering and ticking takeover

`takeOverRendering` and `takeOverTicking` both default to `VANILLA`, attempting instanced rendering and parallel ticks for supported vanilla particles. `NONE` disables the corresponding takeover, while `ALL` also attempts particles from other mods.

Other mods may depend on custom render types, lifecycle side effects, or non-thread-safe state, so `ALL` is explicitly capable of causing errors. On missing particles, crashes, or incorrect behavior, return both options to `VANILLA` or `NONE`, then narrow the scope with class-name blacklists.

## Translucency

The three methods have different compromises:

- `DEPTH_TRUE` resembles vanilla depth testing and suits scenes dominated by opaque visuals.
- `DEPTH_FALSE` uses simple blending and suits many similar translucent particles, but depth ordering is inaccurate.
- `OIT` uses weighted blended order-independent transparency and is broadly useful, but adds GPU load.

Compare a performance scene under the actual shader pack, resolution, and viewing angles instead of relying only on Designer thumbnails.

## Light cache

The default horizontal radius is `256`, vertical radius is `128`, and refresh interval is every frame. Larger ranges consume more memory. Faster refresh follows rapid movement more accurately but uses more CPU. The screen estimates additional memory from the selected ranges.

Restart the client after changing light-cache ranges. `forceMaxLight=true` bypasses some light work and makes every particle fully bright, but also changes the scene's intended lighting.

## Shader compatibility

The source detects Iris and whether a shader pack is active, and it includes an Iris final-pass compatibility injection. It also detects OptiFine classes, but the instanced renderer retains an explicit TODO for active OptiFine shaders, so full compatibility is not promised.

For shader-only failures, separately test no shaders, the Iris pack, `DEFAULT` render type, rendering takeover disabled, and each translucency method. Record the smallest failing combination.

## Known risks

Be conservative with manually edited thread values. The config accessor permits a wider range than some underlying managers accept, and excessive values can throw argument errors. Prefer the smaller common values exposed by the Designer.

The mod optimizes command execution paths containing `mp` with virtual threads. Complex `execute` chains, many targets, and other command-modifying mods need dedicated-server tests for ordering and thread safety, not just a single-player preview.

## Deployment checklist

1. Establish a baseline with `VANILLA` takeover and low `amount`.
2. Test without shaders, with the intended Iris pack, and with the target modpack's render mods.
3. Observe client frame rate, VRAM, RAM, and server network traffic.
4. Increase lifetime, emission frequency, and chain depth one variable at a time.
5. Keep a way to stop the command block or function scheduler quickly during public scenes.

[Back to the MadParticle index](index)
