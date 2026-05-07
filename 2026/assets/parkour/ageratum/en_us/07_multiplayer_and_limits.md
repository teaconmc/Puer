---
title: Multiplayer and Good to Know
navigation:
  title: "07 Multiplayer and Good to Know"
---

# Multiplayer and Good to Know

## The moves are server-checked, not client-hoped

::: tip
**When you wall-jump or roll, the server verifies the move is actually possible before applying it.** If you try a move in a spot where it should not work, the server corrects you back rather than trusting your client.

So this mod's movement is fair between players by design: nobody gains moves their situation does not allow.
:::

## ⚠️ The on/off toggle is a preference, not protection

::: danger
**Turning parkour mode off does not stop anyone from using parkour moves.** The toggle records your preference, but it is not an anti-cheat gate — a modified client can still perform the moves.

Server owners: **if movement integrity matters on your server, do not rely on this switch as enforcement.**
:::

## ⚠️ One config option disables speed limits

| Option | Default | Effect when enabled |
|:---|:---|:---|
| `removeSpeedLimits` | **false** | Removes most of the server's movement-speed rollbacks |

::: warning
The config itself warns about this one: **it makes cheating easier on servers.** Leave it off unless you run a trusted, private world and genuinely need it.
:::

## The backstep grants brief invulnerability

While performing a backstep, incoming damage is cancelled — **on the server**, so it works consistently for everyone.

It lasts only for the instant of the backstep itself, but it means a well-timed backstep can eat a hit. Worth knowing both if you use it and if you fight against someone who does.

## Switching dimensions resets your state

Going through a portal or otherwise changing dimension returns you to the default movement state cleanly. No stuck states carry across.

## ⚠️ The toggle key may be missing from Controls

::: warning
**The "Toggle Parkour Mode" key (Ctrl + P) may not appear in the controls screen.**

Roll/Slide (**V**) registers normally. If you cannot find or rebind the toggle key in your controls list, that matches its current registration state — the keybind exists and works, but the entry can be absent from the menu.
:::

## It adds nothing to collect

Parkour adds **no items, no blocks and no recipes**. There is nothing to craft, find or place.

The one thing datapacks can change is which blocks count as climbable — see [Climbable block tags](05_climbable_tags). That is also the main hook for pack authors: make vines, fences or custom blocks wall-runnable by adding them to a tag.

[Back to index](index)
