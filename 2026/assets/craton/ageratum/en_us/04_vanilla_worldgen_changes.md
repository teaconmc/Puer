---
title: What It Changes About Vanilla
navigation:
  title: What It Changes About Vanilla
description: What disappears from underground, what stays, and what happens to an existing world.
---

# What It Changes About Vanilla

Craton does not just add rock — it **removes** part of vanilla's underground variety and replaces it with layered strata. Read this before installing it on a world you care about.

## ⚠️ Nine kinds of underground blob stop generating

These vanilla features are removed from **every Overworld biome**:

| No longer generates as blobs |
|:---|
| Granite (both upper and lower) |
| Diorite (both upper and lower) |
| Andesite (both upper and lower) |
| Tuff |
| **Underground dirt** |
| **Underground gravel** |

::: warning
**Granite, diorite and andesite still exist — but only as layers.** They appear as strata in the biomes whose rock profile includes them, not as scattered patches you stumble into.

**The practical consequence: if a biome's profile does not include granite, there is no granite there at all.** You can no longer count on finding any of the three rocks by digging anywhere deep enough.
:::

::: danger
**Underground gravel effectively disappears.** A gravel layer type exists but no shipped rock profile actually uses it, so gravel no longer generates underground at all.

If you rely on underground gravel for flint — for arrows early on — **plan on riverbeds and beaches instead.** This is the removal most likely to change how you play.
:::

## ✅ Ores are completely untouched

::: tip
**Every ore generates exactly as in vanilla.** Coal, iron, copper, gold, redstone, lapis, diamond and emerald are not affected in any way.

So your mining strategy does not need to change, and existing knowledge about which depths are best still applies. Craton changes what the *stone around the ore* looks like, not where the ore is.
:::

## ⚠️ Adding it to an existing world leaves a seam

::: danger
**Already-generated chunks keep their vanilla stone.** Only newly generated terrain gets strata.

That means an existing save will show a **visible boundary** at the edge of wherever you had already explored — vanilla stone on one side, layered strata on the other.

**For the best result, start a new world.** If you do add it to an existing save, expect that seam to be permanent unless you delete and regenerate the old chunks.
:::

## When the strata are built

The layers are created **while the terrain itself is generated**, not added afterwards by a separate pass. So the strata are present from the moment a chunk exists — you will never see a chunk generate as plain stone and then change.

This also means the rock profile is chosen from the **surface biome**, which is why the strata under a desert differ from the strata under a forest even at the same depth.

## Summary

| Change | Effect on you |
|:---|:---|
| Granite / diorite / andesite blobs | **Gone** — now only layers, and only where a profile includes them |
| Underground dirt | **Gone** |
| Underground gravel | ⚠️ **Gone entirely** — get flint from riverbeds |
| Tuff blobs | **Gone** |
| **All ores** | ✅ **Unchanged** |
| Existing worlds | ⚠️ **Visible seam** — prefer a new world |

[Back to index](index)
