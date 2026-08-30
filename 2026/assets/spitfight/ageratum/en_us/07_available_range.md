---
title: "Available range"
navigation:
  title: "07 Available range"
---

# Available range

Spit Fight is built for a TeaCon exhibition booth, so the whole mod is gated to a rectangular X/Z area. Outside it, the mod is effectively switched off.

## How the area is defined

The area is an axis-aligned rectangle set by four config keys, defaulting to X from -100 to 100 and Z from -100 to 100.

Two properties are easy to get wrong:

- **The bounds are exclusive.** A position must be strictly greater than the start and strictly less than the end on both axes. Standing exactly on X = 100 or X = -100 counts as *outside*. The in-game config labels even spell this out as "start pos (exclusive)".
- **There is no Y limit.** Only X and Z are checked, so the area is an infinitely tall column — the mod works at bedrock level and in the sky alike, as long as your horizontal position is inside.

The rectangle is also dimension-agnostic: nothing checks which dimension you are in, so the same X/Z window is active in every dimension.

## What the range gates

| Behaviour | Inside the range | Outside the range |
|:---|:---|:---|
| Spit bar HUD | Shown | Hidden |
| Spitting | Works | Refused with *"Not in usable range for this mod, unable to do this."* |
| Chat block when dry | Enforced | Not enforced — you can chat freely |
| Drinking from water | Works | Client never sends the request |
| Natural regeneration | Runs | Does not run |
| Overcharge suffocation | Applies | Does not apply |
| Spit already in flight | Continues | Discarded immediately |

Note the last row: the projectile checks its own position every tick and deletes itself the moment it leaves the area. You therefore cannot spit out of the booth, and a shot fired near the boundary may vanish mid-flight.

Also note that chat's **1 saliva cost is applied regardless of range** — only the client-side "too thirsty to talk" block is range-gated. Talking outside the booth still dries you out, it just never stops you.

## Client and server each keep their own copy

The server always reads the config directly. The client keeps its own cached copy of the four bounds, which the server sends once, when the player logs in.

This means:

- A player who logs in gets the correct range.
- If an operator edits the range while players are online, those players keep the old bounds until they reconnect. Their HUD visibility and client-side checks will then disagree with the server's authoritative checks.

After changing the range on a live server, have players rejoin so client and server agree.

## Setting up a booth

1. Decide the rectangle you want, remembering the exclusive bounds — make it one block larger than the playable space on each side.
2. Set `availableRange.start.x` / `.z` and `availableRange.end.x` / `.z`.
3. Restart, or have players reconnect so their clients receive the new bounds.
4. Verify by walking in: the spit bar appearing is the reliable in-range indicator.

[Back to index](index)
