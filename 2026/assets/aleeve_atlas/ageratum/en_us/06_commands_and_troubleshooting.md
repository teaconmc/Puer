---
title: Commands and Troubleshooting
navigation:
  title: 06 Commands and Troubleshooting
---

# Commands and Troubleshooting

## Client Cache Command

`/aleeve_atlas cache clear` is a client command for the player's current dimension only and needs no server operator permission. It removes the dimension object and attempts to delete its path only when an in-memory cache object already exists; otherwise it returns immediately.

The current implementation calls single-file deletion directly on the dimension directory. Once that directory contains `r.X.Z.atlas` files, deleting the non-empty directory normally fails. Tracked chunks are not cleared, so later client ticks recreate the in-memory cache and resample them, with another disk flush at about 200 ticks. This command is a momentary eviction, not a cache disable or reliable complete disk purge.

## Cache Location and Lifecycle

The cache is stored under `config/aleeve_atlas/caches`. Single-player data is separated by world name and seed, multiplayer data by server address, and then each dimension is stored separately. The mod flushes at roughly 200 client-tick intervals and when leaving a server. The current writer uses a fixed integer for chunk count and a VarInt for color count, while the reader expects the reverse, so populated files normally cannot be read back correctly.

An individual region file that cannot be parsed is deleted on load when possible. To remove data reliably, leave the world before manually handling the corresponding directory, or stale in-memory data may be written again. These files should not currently be treated as dependable persistent map data.

## Common Checks

- Minimap completely missing: press `M`, check `display`, and confirm the client loaded the mod.
- Terrain too dark: try disabling `dynamicLighting`.
- Surface still shown underground: cave mode also requires blocked sky visibility and sky light below 8.
- Too few radar targets: check the master switch, category switches, and `radarRange`, then raise zoom to see a wider map area.
- `B` or `N` does nothing: this is expected in production builds, not a key conflict.
- Scroll wheel does not zoom: the current version changes zoom only in the `M` settings screen.

## Current Scope

Aleeve Atlas gameplay is entirely client-side. It has no server map transfer, fullscreen map, exploration fog, death points, teleportation, waypoint sharing, or import/export. Installing it on a server does not provide these displays to clients that lack the mod.

[Back to the Aleeve Atlas index](index)
