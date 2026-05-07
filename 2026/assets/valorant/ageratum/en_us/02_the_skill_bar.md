---
title: "The skill bar"
navigation:
  title: "02 The skill bar"
---

# The skill bar

The skill bar is the mod's main interface. Press **G** to open it, assign ability items to slots, then fire them with **Z / X / V / B**.

## Nine slots, four keys

The bar has **nine slots internally but only four are shown and usable**. The HUD draws four; the key bindings cover four.

The remaining five exist in the data structure with no key and no HUD position, so anything you place beyond slot four is stored but unreachable. **Treat the bar as four slots.**

## What can go in it

Only the twenty ability items are recognised as skills. The bar keeps an explicit list of them, rebuilt at load, and rejects anything else — including the tab icon item.

## How a slot works

A slot does not hold the item. It stores the **item's identifier**, and the ability is drawn from your inventory when you press the key.

Two consequences follow, and they are the mechanically important part of this page:

**You must still carry the item.** A slot pointing at Healing Orb does nothing unless a Healing Orb is in your inventory. The bar is a shortcut, not storage.

**Assignments survive running out.** Because the slot remembers only the id, using your last Healing Orb leaves the slot pointing at it. Pick up more and the same key works again with no reassignment.

## The HUD

Four slots are drawn with their key letters and the icon of whatever each is assigned to. It reflects assignment, not availability, so a slot shows its ability whether or not you are carrying one.

Sage's Barrier adds an extra HUD line showing its current direction — see [04 Special mechanics](04_special_mechanics).

## Assignments are per-client and not saved

The bar lives in a **static client-side array**. It is not attached to your player, not written to the save, and not synchronised to the server.

Practically:

- Your layout is **shared across every world and server** you join from that client — it is a client preference, like a keybind.
- It is **not preserved across a game restart**, since nothing writes it to disk.
- On a multiplayer server every player keeps their own layout locally; no one can see or change yours.

So expect to reassign after relaunching the game, and do not expect the layout to follow you to a different computer.

## Using a slot

Pressing a slot key sends a request to the server, which locates the ability in your inventory and runs it. Because the server does the work, the ability behaves the same in singleplayer and multiplayer.

Some abilities then wait for a follow-up: Sage's Barrier wants a left click to place, and pressing the skill key again rotates it instead of casting. The HUD tells you when a skill is in that pending state.

[Back to index](index)
