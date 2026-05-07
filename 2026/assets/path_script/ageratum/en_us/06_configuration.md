---
title: "Configuration"
navigation:
  title: "06 Configuration"
---

# Configuration

Seven options, all in the common config. Six of them tune one thing: how the maid teleports to you when you fall behind.

## The options

| Key | Default | Range | Meaning |
|:---|---:|:---|:---|
| `teleport.max_distance` | 20 | 1–1024 | how far you may get from the maid before she teleports |
| `teleport.clear_distance` | 10.0 | 1–1024 | how far you may get from **all** nodes before the path is **cleared** |
| `teleport.y_max_height` | 4.0 | 1–256 | vertical distance beyond which a node is ignored entirely |
| `teleport.y_positive_weight` | 5.0 | 1–100 | penalty for nodes **above** you |
| `teleport.y_negative_weight` | 3.0 | 0.1–100 | penalty for nodes **below** you |
| `teleport.node_dist_weight` | 5.0 | 0.1–100 | weight of horizontal distance |
| `distance to show marks` | 64.0 | 1–1024 | how far node markers render |

## The trap in the defaults

Read those first two rows together, because their relationship is not what the names suggest:

- Get more than **20** blocks from the maid → she **teleports** to a nearby node. Recoverable.
- Get more than **10** blocks from **every node on the path** → the path data is **cleared**. Not recoverable.

**The destructive threshold is the smaller one.** Wander 15 blocks off the route to mine something and you are already past `clear_distance` while still inside `max_distance` — so the tour can end itself before the teleport rescue ever fires.

The difference is what the distance is measured against: `max_distance` is you-to-maid, `clear_distance` is you-to-nearest-node. Those diverge exactly when you leave the corridor the path runs through.

If your tours keep dying when players explore, **raise `clear_distance`** — that is the one to change, not `max_distance`.

## How she picks the node to teleport to

She does not teleport to your feet. She scores nearby nodes and takes the best one, which keeps her on the path rather than off it.

The scoring has three deliberate biases:

**Nodes more than `y_max_height` (4) blocks above or below you are ignored outright.** On a multi-level build this is the setting that matters most — a tour that climbs stairs needs this raised, or she will not find the node one floor up.

**Nodes above you are penalised more than nodes below.** The weights are 5.0 up versus 3.0 down, so given a similar choice she prefers to appear *below* you rather than above. That is the right instinct — a guide dropping in from the ceiling reads worse than one waiting at the foot of the stairs.

**Horizontal distance is weighted at 5.0.** Raising it makes her strongly prefer the closest node; lowering it lets vertical position dominate the choice.

## Marker rendering

`distance to show marks` controls how far away node markers are drawn while you hold the Path Editor. The default 64 blocks is comfortable for editing; raise it to see a long route at a glance, lower it if a dense path clutters your view.

Note this key contains **literal spaces** in its name, unlike the six dotted `teleport.*` keys. If you are editing the file by hand rather than through a config screen, keep the spaces exactly as written.

## Scope

The config is registered as **common**, so it lives with the server or world rather than per-client. On a multiplayer server the host's values apply to everyone.

[Back to index](index)
