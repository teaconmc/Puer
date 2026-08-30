---
title: "Sending a maid"
navigation:
  title: "04 Sending a maid"
---

# Sending a maid

## Dispatching

Right-click a maid with a Path Editor that has a path on it. Two checks apply:

- **She must be yours.** Someone else's maid refuses with *"This maid does not belong to you."*
- **The editor must have a path.** An empty editor refuses with *"No path data on this editor."*

On success she switches to the **Path Navigate** task and sets off from the start node. Confirmation reads *"… is now navigating the path, starting at …"*.

## What Path Navigate changes about her

The task rewires her behaviour substantially. Four of these are worth knowing before you rely on her:

| Behaviour | While navigating |
|:---|:---|
| Looking around and wandering | **disabled** — she stays on task |
| Panic | **disabled** — she will not flee when hurt |
| Sitting on joy blocks | **disabled** |
| Being pushed by entities | **disabled** — she cannot be shoved off the path |
| Pushing other entities | **disabled** — she will not shove you either |

**Panic being off is the one to plan around.** A guide maid attacked mid-tour does not run away; she keeps walking her route. That is what you want for a tour and not what you want in a dangerous area, so route around hostiles rather than expecting her to react.

She also stops pushing and being pushed, which is why a guide never gets nudged into a hole by a crowd — but also means she cannot be physically moved out of a doorway.

## She waits for you

This is the core of the guide experience, implemented as a small stack of behaviours:

- **She waits when you fall behind**, rather than walking on alone.
- **She watches you while waiting**, so it reads as her looking back for you.
- **She teleports to you if you get too far away** — to the most suitable nearby node, not to your feet. How that node is chosen is fully configurable; see [06 Configuration](06_configuration).

The teleport is a recovery mechanism, so a guide tour survives you stopping to mine something. It has a limit, and that limit has a surprising shape — read the configuration page before assuming she will always find you.

## Forks

At a node with more than one exit she stops and asks. The default prompt is *"Which way shall we go then?"*, and the player picks the route.

This is why the path is a strict acyclic graph: every choice moves forward, so a tour cannot double back into a loop. See [02 Drawing a path](02_drawing_a_path).

## The end of the tour

When she reaches a node with no exits she stops and waits there. The end state is labelled *"Tourist Ends"*.

She stays on the Path Navigate task at that point — she does not automatically return to what she was doing before, so switch her back yourself when the tour is over.

## Leaving the path

There is a dedicated behaviour for dropping out of path mode, so a maid can be taken off the tour and returned to normal duty. If the path data is cleared while she is walking — which the teleport logic can do, see [06 Configuration](06_configuration) — she leaves path mode as well.

[Back to index](index)
