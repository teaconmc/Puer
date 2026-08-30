---
title: Storage and Data
navigation:
  title: Storage and Data
description: The storage rune cabinet, the data disk, and the tag written into the parent mod's namespace.
---

# Storage and data

Two entries handle persistence, and they are the only stateful things in the `wenyan_addon` namespace.

## 符咒收納櫃 — the storage rune cabinet

`wenyan_addon:storage_rune_block`, package `「納」`.

Its tooltip describes it as a cabinet for storing runes that contain item, block and similar data. It is the **only block in this namespace with a block entity**, which is what lets it hold contents across saves and chunk unloads.

It is **block-only** — see [02 Device blocks](02_device_blocks). Carrying the cabinet as an item does not expose `「納」` to a script; it has to be placed.

## 數據磁盤 — the data disk

`wenyan_addon:data_disk`, the namespace's only non-block item.

- **Stacks to 1**, so each disk is an individual object rather than a countable resource.
- Its tooltip describes it as persistent storage for data including block and entity data.
- It is not a device with a package name of its own; it is the medium the storage system reads and writes.

The mod ships JSON codec and world-snapshot mapping code behind it, which is consistent with a disk that can capture structured world data rather than a plain item buffer. Exactly what a given Wenyan build writes to it is decided by the parent mod's scripting API, so treat disk contents as version-specific — the README's warning about data formats changing between versions applies most directly here.

## The tag that lives in the parent mod's namespace

The addon generates one data file **outside its own namespace**:

```
data/wenyan_programming/tags/item/paper_module_item.json
```

That tag lists all **18** entries — the 17 block items plus `data_disk` — so the core mod recognizes every one of them as a usable paper module. Two consequences:

- **This tag is the integration seam.** If a future core-mod version renames or relocates that tag, every device in this addon stops being recognized at once, even though nothing in `wenyan_addon` changed.
- Because the file does not set `replace`, it **merges** with whatever `wenyan_programming` ships at the same path rather than overwriting it. A datapack wanting to remove a device from the module list must override the merged tag, not just delete this file.

`example_block` is included in the tag alongside the functional devices, so the reference sample is offered to players as a module like any other.

## What is not here

- **No config.** No config class is registered and no config file is ever generated — despite three config-screen translation keys existing in the language files. See [05 Localization and limits](05_localization_and_limits).
- **No commands.**
- **No network packets of its own** — everything travels through the parent mod's scripting runtime.
- **No mixins and no access transformer** (both blocks are commented out in the mod metadata).

That absence is the point: this addon adds *capabilities for someone else's interpreter*, not systems of its own.

[Back to index](index)
