---
title: "Drawing a path"
navigation:
  title: "02 Drawing a path"
---

# Drawing a path

The Path Editor is a single tool with four gestures. Everything happens server-side and is stored on the item itself, so the path travels with the editor.

## The four gestures

| Gesture | Effect |
|:---|:---|
| Right-click empty space | add a new node, connected from the current node |
| Right-click an existing node | select it |
| Right-click the **already-selected** node | open its edit screen |
| **Sneak** + right-click a node | toggle an edge from the current node to it |

Two of these are easy to miss, so they are worth stating plainly:

**To edit a node you click it twice** — once to select, once more to open the screen. There is no separate edit tool.

**Edges are toggled, not just added.** Sneak-clicking a node you are already connected to **removes** that edge. The chat tells you which happened: *"Connected A -> B"* or *"Removed A -x-> B"*.

## Where a node lands

A node is placed on the **face you clicked**, not inside the block. Right-click the top of a stone block and the node sits in the air space above it — which is where you want the maid to stand.

The first right-click on a fresh editor creates the **start node**. That node is special: it cannot be deleted.

## The path is a branching graph

This is not a list of waypoints. A node can have several outgoing edges, and that is the point — a node with two exits becomes a **fork** where the maid stops and asks which way to go.

Three rules are enforced when you connect:

| Rule | Message |
|:---|:---|
| A node cannot connect to itself | *"Cannot connect a node to itself."* |
| The target must already be a node | *"… is not a node in the path."* |
| **No cycles** | *"This connection would create a cycle. Blocked."* |

**The cycle check is real and strict.** Before adding an edge the mod checks whether the target is already an ancestor of the current node, and refuses if so. The path is therefore always a directed acyclic graph — you cannot build a loop the maid walks forever.

That constraint is what makes the tour finite: every route eventually reaches a node with no exits, which ends the tour.

## Selection follows your last action

After a successful sneak-connect the selection **moves to the target**. That makes chaining natural — connect A to B, and you are now on B, ready to connect B to C.

Plain right-clicking a node also selects it, so you can jump anywhere in the graph to start a new branch.

## Reading the editor

The tooltip shows two things:

- **Current** — the coordinates of the selected node
- **Nodes** — how many nodes the path has

Nodes are drawn in the world as markers while you hold the editor, and the currently-selected one is marked `<< CURRENT >>`. Markers only render within a configurable distance, 64 blocks by default — see [06 Configuration](06_configuration).

## Failure messages you may hit

| Message | Meaning |
|:---|:---|
| *"No path data on this editor."* | you sneak-clicked before creating any node |
| *"No node selected. Left-click a node first."* | nothing is selected yet |
| *"Cannot delete the start node."* | the first node is permanent |

Once the shape is right, hang actions on the nodes — see [03 Node actions](03_node_actions).

[Back to index](index)
