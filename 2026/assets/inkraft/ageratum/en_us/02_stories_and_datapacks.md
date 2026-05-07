---
title: "Stories and Datapacks"
navigation:
  title: "02 Stories and Datapacks"
---

# Stories and Datapacks

Stories are datapack content. Inkraft's reload listener scans every loaded datapack, collects the stories it finds, and keeps them in memory keyed by identifier.

## Where Stories Live

| Property | Value |
|:---|:---|
| Directory | `inkraft_story` |
| File suffix | **`.ink.json`** |
| Full path | `data/<namespace>/inkraft_story/<path>.ink.json` |
| Resulting identifier | `<namespace>:<path>` |
| Reload listener id | `inkraft:story_loader` |

The identifier is derived from the file location, so `data/mystory/inkraft_story/prologue.ink.json` becomes `mystory:prologue`, and that is the argument you pass to `/inkraft start`. Subdirectories are allowed and become part of the path.

::: warning
The suffix is `.ink.json`, **not** `.ink`. Inkraft loads the *compiled* ink JSON produced by a tool such as inklecate; it does not compile ink source itself. Dropping a `.ink` file into `inkraft_story` produces no story and no error message — the file simply does not match the scan pattern and is skipped as though it were not there.
:::

## No Bundled Stories

The mod jar ships **no playable story**. The repository does contain nine `.ink` files, but every one of them is in `docs/assets/` or `src/test/resources/sources/` — documentation examples and unit-test fixtures. None is in `src/main/resources`, so none is packaged as content.

Consequently the first `/inkraft start` on a fresh install will fail to find anything. This is by design for an engine mod, but it does mean there is no bundled demo to learn from in game; the examples live in the project's `docs/` directory instead.

## Reload Semantics

The listener is a `PreparableReloadListener`, so stories refresh with the normal datapack reload:

1. `prepare` walks every matching resource and reads each file into a string.
2. `apply` calls **`clear()` on the story registry, then re-adds** everything it read.

That means a reload is a **full replacement**, not a merge. Removing a story file and reloading genuinely removes the story — there is no stale entry left behind, which is the opposite of several other data-driven mods where a deleted entry survives until restart.

::: info
Because `apply` clears the registry before repopulating it, a datapack that fails to load leaves its stories gone rather than stale. Prefer that to the alternative, but do check the log after a reload rather than assuming a story is still present.
:::

### Read failures are quiet

If a story file cannot be read, the listener catches the exception and calls `printStackTrace()`. The stack trace goes to standard output rather than through the mod's logger, and nothing is reported in game. A malformed or unreadable story therefore looks identical to a missing one from the player's side. When `/inkraft start` reports nothing, check the server console output, not just the log file.

## Story State Is Per Player

A running story is bound to a player, not to the world. Each player has their own Inkraft player data holding their current story, position and variables, and the commands that inspect or advance a story operate on "your" story unless an admin names another player explicitly.

## Loot Integration

Inkraft registers a loot condition, `StoryCondition`, and ships a `predicate` directory. This lets a loot table check story state, so a chest can drop different contents depending on how far a player has progressed — without the story needing to run any command.

[Back to the index](index)
