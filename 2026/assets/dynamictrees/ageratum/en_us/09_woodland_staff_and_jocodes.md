---
title: "Woodland Staff and JoCodes"
navigation:
  title: "09 Woodland Staff and JoCodes"
---

# Woodland Staff and JoCodes

The **woodland staff** (`staff`) captures a tree's shape and replants it. Tree shapes are described by **JoCodes** — compact strings that encode a species' growth layout (trunk, branches, twists and turns).

## Capturing a tree

Right-click a dynamic tree with a staff:

- A non-read-only staff captures the **species** when you right-click a tree or root.
- Without sneaking it additionally captures the tree's **JoCode** (and the root JoCode when roots are present) and copies the tree JoCode to your clipboard client-side.
- On an empty hand use (`USE` in the air) in Creative mode the staff raycasts out to 512 blocks to find a tree.

## Placing a tree

Right-clicking acceptable soil with the staff generates the stored species and JoCode (including a roots JoCode when captured), growing the full tree shape from that position. If the staff has a max-damage value, each placement consumes one use.

- Defaults: the staff defaults to the oak species and the JoCode `"P"` (a simple pillar), and has no durability by default.
- Read-only staffs (set at creation) cannot capture; they only place.

## Staff combat and mining

The staff is a melee weapon with attack damage `5.0` and attack speed `-2.4` (`minecraft:attack_damage` / `minecraft:attack_speed` attributes), and it mines branches and trunk shells quickly compared to other tools.

## Creating staffs

Use `/dt createstaff <pos> <species> [jo_code] [color] [readOnly] [max_uses]` (gamemaster level) to create a staff bound to a specific species, optional JoCode, banner color, read-only flag and use limit — see [Commands](11_commands).

## Seeds with JoCodes

A dynamic seed can also carry a JoCode in its data components (`lifespan` and `force_plant` are other seed components): once planted, such a seed generates the predefined structure instead of a plain tree.

[Back to the Dynamic Trees index](index)