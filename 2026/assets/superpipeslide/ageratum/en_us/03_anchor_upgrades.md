---
title: "Anchor Upgrades"
navigation:
  title: "03 Anchor Upgrades"
---

# Anchor Upgrades

A normal pipe anchor can be upgraded in place. The upgrade items are consumed on success, and the block itself is replaced.

## Branch anchor

Use `anchor_upgrade_branch` on a pipe anchor to make it a branch anchor:

<recipe id="superpipeslide:anchor_upgrade_branch"/>

A branch anchor owns a branch node with managed connections. During sliding, the client shows a gaze choice before the junction and forces the player to slow down. The current registered upgrade is one-way: it cannot downgrade a branch anchor back to a pipe anchor.

## Space fold and dimension fold anchors

The two fold upgrade items convert a pipe anchor into a fold anchor:

<recipe id="superpipeslide:anchor_upgrade_space_fold"/>

<recipe id="superpipeslide:anchor_upgrade_dimension_fold"/>

- `space_fold_anchor` links two endpoints inside the same dimension.
- `dimension_fold_anchor` links endpoints in different dimensions.

A fold anchor keeps at most one pipe connection. Unlike normal and branch anchors, its block has a visible model and opens an editor when you right-click it without a pipe connector in hand.

## Fold editor

The fold anchor editor configures each endpoint as an **A End** or **B End**:

- **A End**: publishes a named bindable endpoint (up to 48 characters).
- **B End**: binds to one available A End of the same kind.
- A space fold only lists A Ends in the same dimension; a dimension fold only lists A Ends in another dimension.
- An A End that is already bound by another B End appears as unavailable.

The editor can switch an endpoint between A and B, clear a binding, rename an A End and save the calibration. Saving removes the previous binding when you switch modes.

## Fold traversal

When sliding reaches a configured fold anchor, the client requests a teleport through the network. The server checks that the target dimension exists and the coordinates are finite, loads the target chunk, then commits the teleport. If the server rejects it, the slide stops and the player stays where they are.

[Back to the SuperPipeSlide index](index)
