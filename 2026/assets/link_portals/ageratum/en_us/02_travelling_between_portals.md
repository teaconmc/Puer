---
title: "Travelling Between Portals"
navigation:
  title: "02 Travelling Between Portals"
---

# Travelling Between Portals

Once two portals are lit, the network name does all the work. This page covers what links to what, what you see when you step in, and where you come out.

## The network name is the whole linking rule

There is no pairing step, no linking item and no distance limit. **Two portals are linked when their network names are identical** — nothing else is consulted:

- Same name, different dimensions → linked.
- Same name, thousands of blocks apart → linked.
- Different names, side by side → **not** linked.

An empty network name becomes **`default`**, so every portal you never named ends up on one shared network. That is convenient at first and becomes the first thing to fix later: on a server where several people build portals without naming them, they all land in `default` together.

::: tip
Treat the network name as the address and the portal name as the label. The network decides **who can reach whom**; the portal name only decides **what the entry reads** in the destination list. Renaming a portal never changes its links.
:::

## What happens when you step in

The behaviour depends on how many other portals share the network:

| Portals on the network | Result |
|:---|:---|
| 1 (just this one) | Nothing to travel to |
| 2 | You go straight to the other one |
| 3 or more | The **Choose Destination** screen opens |

The two-portal case is the reason a simple A↔B link feels instant: with only one possible target there is nothing to ask.

## The destination list

With three or more portals the screen `screen.link_portals.portal_destination` — **Choose Destination** — lists the other portals on the network by their portal names. Pick one and you are sent there.

This is where portal names earn their keep. A network of five portals all left unnamed gives you five indistinguishable entries; naming them by place is what makes the list usable.

## Where you come out

Each portal stores a **spawn position** and a **facing** at the moment it is activated, not at the moment you travel. Arrival therefore uses the geometry the portal had when it was lit:

- You arrive at the stored spawn position, which sits in front of the ring rather than inside it.
- The stored facing decides which way you look, so you step out of the portal rather than into its frame.

**Which side counts as the front was decided when the portal was activated** — it is the side you were standing on at that moment, as described in [Getting started](01_getting_started).

The teleport call also receives the **source** portal's axis, not just the destination's stored facing, so exit orientation is a function of both ends rather than of the destination alone. **How exactly the two combine is not spelled out in a single readable place in the source, so this page does not assert a precise rule** — build one link, walk it once in each direction, and you will see the behaviour for your own layout.

## Two things that silently do not travel

::: warning
**A mounted entity is not teleported.** The portal's entry handler returns immediately when the entity has a vehicle, so **riding a horse, boat or minecart through a portal does nothing** — you pass through the lit surface and stay where you are. Dismount first.
:::

The mod guards against re-entry loops using persistent data on the entity: it records the last tick the entity was inside a portal and sets a `teleported` marker, **and it copies that marker onto every passenger**. That is why an entity arriving at a destination does not immediately bounce back through the portal it landed in front of.

::: warning
Because position and facing are captured at activation time, **rebuilding the ring around an active portal does not update them**. If you have moved or reshaped a portal and arrivals now land oddly, break it and re-activate it so the stored values are recaptured. See [Blocks, items and technical notes](03_blocks_items_and_technical_notes) for how that data is stored.
:::

## Cross-dimension travel

Each portal records the dimension it lives in, and the destination list mixes dimensions freely. A network can hold an Overworld portal, a Nether portal and an End portal at once — the list simply shows all of them, and travel goes wherever you pick.

There is no fuel, no cooldown and no toll: the network name is the only requirement.

## Working with more than one network

Because the network name is a free-text field, you organise by convention rather than by any mod feature. Two patterns that work well:

**One network per purpose.** `mines`, `farms`, `bases` — each becomes its own destination list, so stepping into a mine portal only ever offers other mines.

**One network for everything, named portals.** A single `default` (or `hub`) network with carefully named portals gives you one list of every destination. Fine for a solo world; unwieldy past a dozen portals.

## What can travel

The mod moves the entity that enters the portal, so travel is not limited to walking in yourself — anything that can enter the ring is subject to the same logic. The destination screen, however, is a player-facing screen: with three or more portals on a network, **a non-player entity has no way to choose**, so multi-portal networks are effectively player-only. Keep a dedicated two-portal network if you want something else to move reliably.

[Back to the index](index)
