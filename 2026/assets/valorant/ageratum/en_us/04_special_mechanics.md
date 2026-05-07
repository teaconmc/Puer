---
title: "Special mechanics"
navigation:
  title: "04 Special mechanics"
items:
  - valorant:clove_not_dead_yet_item
---

# Special mechanics

Four abilities do not behave like items you right-click. Each has its own interface or gate.

## Sage's Barrier has two orientations

The Barrier Orb places a wall, and **which way the wall faces is a mode you control**, not something derived from where you look.

| Mode | Wall runs |
|:---|:---|
| Sideways *(default)* | across your facing — a barricade in front of you |
| Forward | along your facing — a corridor wall beside you |

Press **C** to switch. Chat confirms with *"Barrier direction: sideways"* or *"…forward"*, and the HUD shows the current mode permanently, so you can check before committing.

**Placement is a two-step action.** After triggering the skill the barrier is *pending* — the HUD says *"Left click to place, press the skill key again to rotate"*. So:

- **Left click** commits the wall where you are aiming.
- **Pressing the skill key again** rotates it instead of casting a second one.

That second option is the useful one: you can arm the barrier, see the orientation, flip it, and only then place. Sideways for blocking a doorway, forward for splitting a corridor lengthways.

## Clove's Not Dead Yet works only when you are dead

This is the mod's most unusual mechanic: an item you use **from the death screen**.

When you die holding it, the mod replaces the vanilla death screen with its own:

> **You died**
> Use Not Dead Yet to return, then get a kill.
> `[ Use Not Dead Yet ]`

Press the button and you return to life. The subtitle states the condition plainly — **coming back is not the end of it, you then need a kill** — which mirrors the original ability, where failing to secure one sends you back down.

Trying to use it while alive fails with *"Use this from the death screen."* So it is not an emergency heal; it is a second chance you must already be carrying when you die.

Note this is separate from Phoenix's Run It Back, which is a self-revival you trigger *before* dying.

## Clove's Ruse is placed on a map

Ruse does not throw anything. It opens a screen titled **Ruse** with the instruction *"Click the map to place smoke."*

You get a map view and click where you want smoke to appear — **remote placement at range**, rather than throwing a grenade and hoping. This is the only targeting interface of its kind in the mod.

Ruse consumes the item, and unusually it is taken **from anywhere in your inventory** rather than needing to be held.

## Jett's Blade Storm is the only ability with a cooldown

Every other ability is limited purely by how many you carry. Blade Storm is limited by time as well: using it puts the item on a real cooldown, shown by the vanilla cooldown sweep on the item.

Its sound set reveals two firing modes — **three randomised single-throw sounds** and a separate **throw-all** sound — so the knives can be spent one at a time or all at once.

It is also the one ability that **does not consume the item in creative mode**, so it is the natural choice for testing.

A tracker manages its state and can also **clear the cooldown**, so expect the cooldown to reset under some conditions rather than always running its full length.

## Sage's Resurrection is off by default

Resurrection is the only ability behind a config switch, and that switch ships **disabled**.

| Key | Default |
|:---|:---|
| `sage_resurrection` | **false** |

Take the item, assign it, press the key — and nothing happens, with no in-game explanation. **If Resurrection appears broken, this is why.** A server operator must set it true; the option is common-scoped, so the server's value applies to everyone.

The comment on the option is bilingual in the source, which suggests the author expected people to go looking for it.

[Back to index](index)
