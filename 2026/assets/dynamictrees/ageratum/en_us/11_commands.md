---
title: "Commands"
navigation:
  title: "11 Commands"
---

# Commands

Dynamic Trees registers a base command `/dt` with alias `/dynamictrees`. The alias requires gamemaster permission; most subcommands only need level-2 permission (any player on most servers can run them).

| Command | Permission | What it does |
|:---|:---|:---|
| `/dt gettree <pos> [code_raw]` | level 2 | Shows the tree's species and JoCode at the position; `code_raw` prints the raw code without formatting. |
| `/dt getroots <pos> [code_raw]` | level 2 | Shows the roots' species and JoCode at the position. |
| `/dt growpulse <pos> [number]` | gamemaster | Triggers `number` growth pulses (default/minimum 1) on the tree at the position. |
| `/dt killtree <pos>` | gamemaster | Destroys the tree at the position without dropping its wood. |
| `/dt registry <registry> list [raw]` | level 2 | Lists the entries of a Dynamic Trees registry: `registry`, `cellkit`, `leavesproperties`, `growthlogickit`, `family`, `genfeature`, `fruit`, `pod`, `species`, `soilproperties`. |
| `/dt fertility <pos> [raw]` | level 2; setting a value requires gamemaster | Reads the rooty soil fertility at the position; with a value `0..15` sets it. |
| `/dt settree <pos> <species> [jo_code] [turns] [fertility]` | gamemaster | Creates a tree of the given species with an optional JoCode, turn count and fertility; a root JoCode branch is supported. |
| `/dt rotatejocode <jo_code> <turns>` | level 2 | Rotates a JoCode by the given number of turns. |
| `/dt createstaff <pos> <species> [jo_code] [color] [readOnly] [max_uses]` | gamemaster | Creates a woodland staff at the position bound to a species and options — see [Woodland staff and JoCodes](09_woodland_staff_and_jocodes). |
| `/dt setcoordxor <xor>` | gamemaster | Sets the co-ordinate XOR used for deterministic worldgen placement. |
| `/dt clearorphaned [pos [radius]]` | level 2 | Removes leftover tree data around the position (default radius: one chunk) that no longer belongs to a live tree. |
| `/dt purgetrees [pos [radius]]` | gamemaster | Destructively removes all tree structures around the position — use with care. |

::: note
The registrations for `/dt transform` and `/dt createtransformpotion` are commented out in the current source and are therefore not available.
:::

[Back to the Dynamic Trees index](index)