---
title: Item Data Exporter
navigation:
  title: Item Data Exporter
items:
  - let_me_see_see:item_data_exporter
description: Render item icons to PNG at any size and export item metadata, optionally in MCMOD format.
---

# Item Data Exporter

Right-click the Item Data Exporter in the air to open it. This is the tool for producing wiki and database material rather than for reading code.

## What it exports

Two things, controlled separately:

- **Item images** — the item's icon rendered to a PNG, at a size and scale you choose.
- **Item metadata** — names and related data, written in the languages listed in the `languages` config option (default `["en_us", "zh_cn"]`).

## Choosing a scope

| Field | Label | Accepts |
|:---|:---|:---|
| Namespace | "Namespace: " | A modid, **or** a specific item id |

The hint text spells out the important part:

> The namespace(modid) or item id to export. Keep empty to export all namespaces.

::: warning
**An empty namespace means every item from every mod.** In a large modpack that is a very large render job. Fill in a modid first unless you genuinely want the whole registry.
:::

## Image controls

| Control | Label |
|:---|:---|
| Output size | "Image Size: " |
| Item scale within the image | "Item Scale: " |
| Toggle PNG output | "Save Item Image as PNG" |
| Run | "Export PNG" |

The two size fields are independent: **Image Size** is the canvas, **Item Scale** is how large the item is drawn inside it. That separation is what lets you produce padded icons at a consistent canvas size.

Rendering goes through the mod's own off-screen framebuffer (`OffScreenFBO` / `OffScreenRenders`), so the export does not depend on what is currently visible on your screen.

## MCMOD format

There is a second export button, **"Export As MCMOD Format"**, which writes output shaped for the MCMOD wiki instead of the mod's own layout. It carries a warning worth reading before you click it:

> Cannot export using custom image settings.

So the MCMOD path **ignores your Image Size and Item Scale** and uses its own fixed conventions. If you tuned those two fields and then exported as MCMOD, your settings were silently not applied — the tooltip is the only place this is stated.

## Why an item and not a command

The exporter has to render items, which means it needs a live client with the atlas loaded and a GL context available. That is also why the mod registers **no commands at all** — a command would run on the server thread where none of this exists.

[Back to index](index)
