---
title: "Commands and Configuration"
navigation:
  title: "07 Commands and Configuration"
---

# Commands and Configuration

## Admin Commands

The root `/spf` command registers admin subcommands with `requires(Commands.LEVEL_GAMEMASTERS)`, permission level 2. `/simple_path_finder` is a redirect alias for `/spf`.

| Command | Behavior |
|:---|:---|
| `/spf admin config maxConcurrentTasks <1..16>` | Changes the runtime batch-solver concurrency for the current server process. |
| `/spf admin stats` | Prints the number of nav chunks, layers, encoded bytes and compressed bytes for the player's level. |
| `/spf admin nav remove current` | Removes the whole nav chunk containing the executing player, if present. |
| `/spf admin nav build current` | Builds layer `0` for the player's current chunk. |
| `/spf admin nav build <layer>` | Builds the given byte layer for the player's current chunk. |
| `/spf admin nav build <layer> <dx> <dz>` | Builds the current chunk, then batch-builds the rectangular region from the current chunk through `current + dx, current + dz` (`0..255` each). |

The batch build loads full chunks, solves them with the global block-distance configuration, sends `[SPF] Built current / total` progress messages and finishes with a batch summary. The area contains `(dx + 1) * (dz + 1)` chunks.

## Client Commands

Client commands are available in `/spf` on the client:

- `/spf nav <x> <y> <z>`: client-side pathfinding.
- `/spf nav clear`: clears the rendered result.
- `/spf navserver <x> <y> <z>`: server-side pathfinding request.
- `/nav ...` and `/navserver ...` are aliases.

## Server Configuration

`NavConfig` is registered as a NeoForge server config.

| Key | Default | Meaning |
|:---|:---|:---|
| `max_nav_chunks` | `66049` | Maximum nav chunks stored in a level. |
| `max_layers` | `37` | Maximum layers per nav chunk. |
| `defaultBlockDistance` | `10` | Intended global fallback edge cost. The current build reads this via the config-spec default, so editing this key does not change the parsed global cost. |
| `max_concurrent_tasks` | `4` | Batch-solver slots used by `/spf admin nav build <layer> <dx> <dz>`. |
| `require_creative_mode` | `false` | When `true`, Navigation item graph operations and Navigation Brush operations require creative mode. |
| `server_side_pathfinding` | `true` | When `true`, the server computes paths and full nav sync is disabled. |
| `block_distance` | `["minecraft:dirt_path:3"]` | Global `namespace:path:value` costs used when batch building. |

The global `block_distance` list accepts block IDs only and is only passed as the fallback when distance data is `null`, which is the batch-build path. Navigation item builds use the player's own `player_block_distance` attachment; its unconfigured default is also `10`. In the current build, changing `defaultBlockDistance` in the server config does not update that player fallback either.

## Client Configuration

`ClientConfig` is registered as a NeoForge client config with one key:

| Key | Default | Meaning |
|:---|:---|:---|
| `smooth_path` | `true` | Smooths the rendered navigation path with Chaikin iterations. |

## Per-Player Block Distance Screen

From the Navigation item settings screen, `Block Distance Config` opens an editor backed by `simple_path_finder:player_block_distance`. It supports exact block IDs and `#tag` IDs, a distance value, a default-distance cycle (`0`, `1`, `10`, `50`), list paging, remove and save buttons, and Tab autocomplete for registered block IDs and tags. Saving sends `simple_path_finder:sync_block_distance_config`; the server replaces the player's attachment and echoes it back. Distance values entered in the GUI are parsed as integers without a positive-only restriction in the current handler.

## Deployment Notes

The current network handlers are permissive:

- `simple_path_finder:pathfinding_request` accepts any `BlockPos` from a connected player. The only limits are the global queue size and the one-request-per-player check.
- `simple_path_finder:sync_block_distance_config` replaces the player's block-distance attachment without permission, range or positive-value validation.
- `simple_path_finder:update_item_properties` only checks that the declared hand holds a Navigation or Nav Brush item; it does not check creative mode, which is enforced later when the server-side graph operation runs.
- `NavLink` serialization drops the dimension, so links must remain same-dimension.
- The mod registers no keybindings.

[Back to index](index)
