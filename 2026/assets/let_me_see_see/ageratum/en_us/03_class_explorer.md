---
title: Class Explorer
navigation:
  title: Class Explorer
items:
  - let_me_see_see:explorer
description: Search loaded classes, rebuild the scan cache, and export classes so they persist.
---

# Class Explorer

Right-click the Class Explorer in the air to open the browser. This is the screen the mod is named after.

## What you can do

| Control | Label in game | Effect |
|:---|:---|:---|
| Search box | "Search Classes: " | Filter loaded classes by name |
| Rebuild | "Re-scan all loaded class." | Rebuild the class map from the current runtime |
| Export | "Export Class." | Record a class so it survives into the database |
| Export all | "Export and decompile all loaded classes" | Bulk export + decompile everything currently loaded |
| Filter | "Show exported only" | Hide anything not yet exported |

An invalid name reports **"Not a existed class name."** and long searches show **"Searching..."** rather than freezing silently.

## Loaded, not available

The explorer lists classes that are **currently loaded in the running JVM**, not every class that exists on disk. Two consequences:

- A class from a mod you have installed but never triggered may simply not appear yet. Go make the game load it (place the block, open the screen) and hit **Re-scan**.
- The list changes as you play. This is why the rebuild button exists, and why the mod fires its own `RebuildClassMapEvent` when the map is regenerated.

::: tip
**"Export and decompile all loaded classes" is the heavy button.** In a large pack it will decompile a very large number of classes in one go. Use the search-then-export loop when you know what you are after, and save the bulk path for when you genuinely want an offline corpus.
:::

## Exporting makes it persist

Exported classes are recorded by `ExportsDataManager` and reloaded on config load, which is what makes the **Exported Classes Data Base** screen useful across sessions. The database distinguishes two states you should pay attention to:

| State | Message | Meaning |
|:---|:---|:---|
| Old | "Class exported before." | You already exported this one |
| Stale | "Some mod changed since the export and may influence class contents. Suggest to re-export." | The environment moved under you |

The stale warning is the important one: an export is a snapshot, and if you update or add a mod afterwards the recorded contents may no longer match what is actually running. The screen offers **Re-Export Class** for exactly this.

## If the agent did not load

If `Instrumentation` is unavailable, opening the explorer gives you the **Class Explorer Unavailable** screen with this text:

> The Java Agent failed to load. Class explorer features require Instrumentation support and cannot function in the current runtime environment. Please check your launch arguments and JVM settings.

This is a deliberate, translated fallback — not a crash and not an empty list. See [Troubleshooting](06_technical_notes) for what to do about it.

[Back to index](index)
