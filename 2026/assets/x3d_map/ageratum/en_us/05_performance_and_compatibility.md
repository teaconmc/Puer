---
title: Performance and Compatibility Mode
navigation:
  title: Performance and Compatibility Mode
---

# Performance and Compatibility Mode

## Terrain Detail Levels

Normal mode uses block-level terrain inside the base LOD distance and changes to heightfields farther away. The base distance defaults to `512` blocks, with further detail reductions at approximately `+1000`, `+2000`, and `+4000` blocks.

`recordAllAboveSeaLevel` defaults to `true`. The compiler extends each column's minimum recorded height toward sea level to preserve visible structures above it. This increases memory, VRAM, and disk data, but still does not produce a cave view.

## Client Performance Configuration

| Configuration key | Default | Range | Effect |
|:---|:---:|:---:|:---|
| `forceCompatibilityMode` | `false` | On / off | Force the fallback rendering path |
| `recordAllAboveSeaLevel` | `true` | On / off | Preserve more surface structure while using more VRAM |
| `minimapRenderInterval` | `10` | `1`–`200` frames | Minimap terrain redraw frequency |
| `autoSaveInterval` | `1200` | `20`–`72000` ticks | Automatic map-save period |
| `drawNewChunkInterval` | `20` | `1`–`1200` ticks | Update-queue processing period |
| `drawNewChunkCount` | `1000` | `1`–`50000` | Maximum chunks handled per batch |
| `showMapInfo` | `true` | On / off | Show first-open help, then automatically turn off |

Processing more chunks in each batch fills the map faster but creates larger CPU and GPU-upload spikes. A shorter auto-save interval increases disk writes.

## Automatic Compatibility Detection

On login, the mod checks these OpenGL extensions:

- `GL_ARB_multi_draw_indirect`, or MDI.
- `GL_ARB_sparse_texture`, or sparse textures.
- `GL_ARB_shader_storage_buffer_object`, or SSBO.

Missing any one of them, or manually enabling `forceCompatibilityMode`, activates compatibility mode and records the reason. A warning window is shown when the map opens.

Compatibility mode uses full-mesh LOD buffers instead of the normal MDI, sparse-texture, and SSBO paths. Both source and UI warn that it may cause severe frame drops or crashes. It is a fallback for missing hardware capabilities, not a general performance optimization.

## Tuning Order

When performance is poor, adjust one scope at a time:

1. Reduce minimap High Detail Range or increase its render interval.
2. Reduce world-map LOD Distance and Load Distance.
3. Lower `drawNewChunkCount` to spread queue work across more batches.
4. If VRAM is constrained, disable `recordAllAboveSeaLevel` and recompile affected chunks.
5. Force compatibility mode only when automatic detection fails or the fallback is genuinely required.

[Back to the x3d Map index](index)
