---
title: "Holograms"
navigation:
  title: "05 Holograms"
items:
  - kilagraphdemo:server_hologram
---

# Holograms

A hologram is a **shader graph plus geometry**, projected into the world by a hologram block. Both hologram blocks emit **light level 7**, so they glow gently even before you attach anything.

## Geometry: four kinds

| Kind | Notes |
|:---|:---|
| Cube | |
| Sphere | takes a **Subdivisions** value |
| Quad | a flat panel |
| Custom (OBJ) | import your own mesh |

Shared controls are **Radius**, **Spin per tick** and **Flip UV (V)**. Spin is a per-tick rotation, so a non-zero value gives you a continuously turning display with no animation work.

**Flip UV (V)** exists because exporters disagree about which way the vertical texture axis runs. If your texture appears upside down, toggle this rather than re-exporting.

## Importing your own files

Two file pickers are available:

- **Import OBJ…** for geometry
- **Choose PNG…** for textures

Both validate the path and reject anything outside a conservative character set. The message is explicit:

> Use lowercase a-z 0-9 / . _ - in the file path

So keep file names lowercase and free of spaces. This is a naming restriction, not a size one — size limits apply when you upload, and they are covered in [06 Sharing and limits](06_sharing_and_limits).

## Shader functions

The editor has a **Shader Functions** view where you can create, rename and delete reusable shader function resources. Deletion asks for confirmation and warns that it cannot be undone — and with good reason: a work that references a deleted function will refuse to upload until you restore it or remove the nodes that use it.

The editor offers three views — **Model**, **World** and **Shader Functions** — so you can inspect your work in isolation or in situ.

## Editing shader graphs requires Iris shaders off

This is the one hard blocker you may hit:

> The shadergraph must be edited without a shaderpack active. Please disable shaders in Iris (Video Settings → Shader Packs) and try again.

If you run a shaderpack, turn it off before opening the shader graph editor. The mod detects the conflict and tells you rather than failing silently, but it will not let you proceed.

## Placement

Placement controls where and how the hologram renders relative to its block, with **Reset** to return to defaults and **Apply** to commit. Applying sends the change to the server, so placement is shared state rather than a local preference.

**The AABB button is the debugging tool worth knowing.** It draws the render bounding box — the cull box for your current radius and placement — as a wireframe in the world for **10 seconds**. Clicking again refreshes the timer.

Use it when a hologram disappears at certain camera angles: that is a culling symptom, and seeing the actual box usually shows the radius is smaller than the geometry.

## Local versus server holograms

The **Hologram** block shows a work from your local library. The **Server Hologram** shows a work chosen on the server and pulled lazily by each client, so everyone sees the same thing.

On the Server Hologram you can **Set as display** to show a work to everyone, or **Clear display** to show nothing. Both hologram screens list Server and Local sections side by side, so you can browse what is shared and what you hold locally in one place.

[Back to index](index)
