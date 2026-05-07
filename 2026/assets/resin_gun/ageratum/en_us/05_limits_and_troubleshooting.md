---
title: "Limits and Troubleshooting"
navigation:
  title: "05 Limits and Troubleshooting"
---

# Limits and Troubleshooting

## No Resin Gun Item ID Appears

This is expected. The mod does not register `resin_gun:resin_gun`, `resin_gun:resin_bullet`, or amber items; those names are recipe, model, and internal data IDs. Their carriers are component-bearing vanilla items, so obtain them through the mod recipes and do not search for them as ordinary registry entries.

## A Modded Mob Does Nothing

Capture and sticking only process entities in the combined `resin_gun:mobs` tag. Append a modded mob to the appropriate size tag with a data pack. For a sticky-only target, use `resin_gun:non_capture_mobs` and ensure it is absent from every size tag. That tag has no exclusion priority, so a boss that also matches a size tag can still be captured. Keep a target out of all four tags if it should ignore Resin Bullets entirely.

## Large Pool Slowing Is Inconsistent

The current `tick_mob` function queries `resin_pool2`, a tag that is never created; generation uses `resin_pool_2`. The intended roughly two-block slowing branch for a large pool therefore never matches. A large pool still retains `resin_pool`, so its one-block base-pool check works, and large capture uses the correct tag.

## Mob State Changes After Capture

Sealing forcibly enables no-AI, silent, invulnerable, and persistence states. Release directly disables the first three without preserving their original values. Do not capture story or command mobs configured to remain without AI, silent, or invulnerable.

## Reloads and a Forced Chunk

The load function creates several scoreboard objectives, force-loads chunk `(0, 0)`, and maintains a fixed-UUID world marker at the origin. Repeated `/reload` calls can report existing objectives or UUIDs. Existing gameplay usually continues, but repeated reloads should not be treated as a repair procedure.

## No Config or Key Page

The current version has no player commands, key bindings, or config file. Loading, firing, collecting, and release all use vanilla use/attack interactions.

[Back to the Resin Gun index](index)
