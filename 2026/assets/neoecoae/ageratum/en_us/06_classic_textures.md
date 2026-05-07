---
title: Classic Textures
navigation:
  title: Classic Textures
description: The addon ships a second, complete texture set as a built-in resource pack you can switch on.
---

# Classic textures

## There is a second look, and it is already installed

The addon bundles a **complete alternative texture set** as a built-in resource pack:

| Property | Value |
|:---|:---|
| Internal name | `classic_pack` |
| Display name | **ECO AE Extension Classic Textures** |
| Contents | **348 textures, 161 models, 39 blockstates** — 548 files |
| Declared pack format | **34** |

It is registered through NeoForge's pack-finder event during mod construction, which is the standard way a mod contributes a built-in pack. That means **it appears in the ordinary Resource Packs screen** — you do not download anything, you just enable it.

## How to use it

1. Open **Options → Resource Packs**.
2. Find **ECO AE Extension Classic Textures** in the available list.
3. Move it to the selected side and apply.

Because it only contains textures, models and blockstates for this addon's own namespace, it changes nothing else in your game.

## ⚠️ One caveat about the pack format

The pack declares **`pack_format: 34`**, which corresponds to a much older Minecraft generation than the 26.1.2 this addon targets. Built-in packs contributed through the pack-finder event are constructed by the mod rather than validated as a user-supplied zip, so this may be inconsequential in practice.

But if the pack shows as **incompatible** or is hidden in your Resource Packs list, this declared format is the reason — not a broken install. Nothing about the textures themselves is affected.

## Why a mod ships two texture sets

The addon's own blocks are heavily technical — casings, cores, vents, hatches, arrays. The default set and the classic set are two visual languages for the same machinery, and 548 files is a full parallel set rather than a handful of overrides.

For a build-heavy AE2 setup this is genuinely useful: **you can match the addon's blocks to whichever AE2 texture generation your pack's other content follows**, without editing anything.

## What it does not change

- No recipes, no behaviour, no configuration.
- Nothing outside the `neoecoae` namespace.
- No effect on servers — it is a client resource pack.

## A note for pack authors

Because this is a built-in pack rather than a file in your pack folder, you cannot edit it in place. If you want a third look, make an ordinary resource pack that overrides `neoecoae` textures and place it above both — normal resource-pack precedence applies.

[Back to index](index)
