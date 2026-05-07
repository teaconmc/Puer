---
title: API Reference
navigation:
  title: API Reference
description: Every host function and predefined input available to a program.
---

# API reference

All functions are imported from the module named **`LiveHelper`**. Handle types are written as `i32(handle, …)` for an owned handle and `i32(&handle, …)` for a borrowed one.

## Technique functions

These build the value a Technique program returns.

### `Technique.MakeClip`

Builds a camera at a fixed position and orientation.

| Parameter | Type | Meaning |
|:---|:---|:---|
| `pX`, `pY`, `pZ` | `f32` | position on each axis |
| `rX`, `rY`, `rZ`, `rW` | `f32` | orientation as a **quaternion** |

Returns an owned clip handle. Return it from your entry point.

Orientation is a quaternion rather than yaw and pitch, which is what makes interpolating between two arbitrary camera angles well-behaved.

### `Technique.MakeEntity`

Builds a camera attached to a named entity instead of to coordinates.

| Parameter | Type | Meaning |
|:---|:---|:---|
| `pName` | pointer | entity name in your module's memory |
| `pMemoryPage` | `i32` | the memory page that pointer lives in |

Returns an owned clip handle.

## Manager functions

These build the frame configuration a Manager program returns.

### `Manager.Render.Single`

Activates exactly one clip — a hard cut.

| Parameter | Type | Meaning |
|:---|:---|:---|
| `clipIndex` | `i32` unsigned | **zero-based** clip index |
| `progress` | `f32` | how far through that clip, in `[0, 1]` |

Returns an owned frame-configuration handle.

### `Manager.Render.Mix`

Blends two frame configurations by linear interpolation.

| Parameter | Type | Meaning |
|:---|:---|:---|
| `frame1` | `i32(handle)` | first frame configuration |
| `frame2` | `i32(handle)` | second frame configuration |
| `progress` | `f32` | `0` shows only `frame1`, `1` shows only `frame2`, in between interpolates |

Returns an owned frame-configuration handle.

Because both inputs are configurations rather than clips, **Mix nests** — feed a Mix into another Mix to build multi-way transitions.

## Handle functions

### `Handle.Duplicate`

Takes an additional owned handle to the same underlying value. Use it when one value must be consumed twice.

### `Handle.Release`

Gives up an owned handle. Never call it on a borrowed handle, and never twice on the same owned one.

Remember that returning a handle from your entry point transfers ownership to the host, so a returned configuration must **not** also be released.

## Input functions

### `Input.GetF32`

Reads a float input by name.

| Parameter | Meaning |
|:---|:---|
| `pName` | pointer to the name in your memory |
| `pMemoryPage` | the memory page that pointer lives in |

### `Input.GetBuffer`

Reads a text input into a buffer you supply.

| Parameter | Meaning |
|:---|:---|
| `pName`, `pNameMP` | pointer and page for the input name |
| `pBuffer`, `pBufferMP` | pointer and page for your destination buffer |
| `lBuffer` | the length of your buffer |

**Returns the length required.** If that is larger than `lBuffer`, nothing was written — allocate more and call again. Successful results are UTF-8 and null-terminated.

## Predefined inputs

Supplied by the host; you do not declare them.

### Available to a Technique

| Input | Read with | Meaning |
|:---|:---|:---|
| `progress` | `GetF32` | how far through this shot, in `[0, 1)` |

### Available to a Manager

| Input | Read with | Meaning |
|:---|:---|:---|
| `clip` | `GetF32` | how many clips exist |
| `clip.$id.duration` | `GetF32` | duration of clip `$id` in **milliseconds** |
| `clip.$id.name` | `GetBuffer` | name of clip `$id`, UTF-8 null-terminated |
| `duration` | `GetF32` | milliseconds elapsed since the scheduler started |

`$id` is the zero-based clip index, substituted into the input name. So reading the name of the third clip means asking for `clip.2.name`.

Note that **`progress` for a Technique is `[0, 1)`** — half-open, excluding 1 — while the `progress` **parameters** you pass to `Single` and `Mix` are documented as `[0, 1]`, inclusive. That asymmetry is intentional: a shot never reports itself as fully complete, but you may explicitly ask for a fully-completed blend.

## Quick reference

| Function | Returns |
|:---|:---|
| `Technique.MakeClip(f32 ×7)` | owned clip |
| `Technique.MakeEntity(ptr, page)` | owned clip |
| `Manager.Render.Single(u32, f32)` | owned frame configuration |
| `Manager.Render.Mix(handle, handle, f32)` | owned frame configuration |
| `Handle.Duplicate(handle)` | owned handle |
| `Handle.Release(handle)` | — |
| `Input.GetF32(ptr, page)` | `f32` |
| `Input.GetBuffer(ptr, page, ptr, page, len)` | required length |

[Back to index](index)
