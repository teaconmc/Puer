---
title: "Tada"
navigation:
  title: "06 Tada"
items:
  - "madparticle:tada"
---

# Tada

<item id="madparticle:tada"/>

## Obtaining one

Tada has no recipe and is not added to a mod creative tab. Prepare a valid command beginning with `mp` or `madparticle` in the Designer's Tada tab, then use the Make button.

The server validates the request, and only a player with game-master command permission receives the item. It is inserted directly into the inventory, so leave a free slot before creating one.

## Pulse and continuous modes

The item stores the complete command in its `madparticle:tada` data component and derives its mode from `pulse` in command meta:

- **Pulse** executes once when use begins and resets only after the use key is released.
- **Continuous** executes on every use tick while the use key is held.

Continuous mode can generate a large number of particles very quickly. Reduce command `amount` first and confirm that the server and every viewing client can handle it before a public performance.

## Use behavior

Only an item with a valid Tada data component can begin use. The server executes the stored MadParticle command from the holder's command source with game-master permission; creation still restricts the original request to a MadParticle command.

Meta key `tada` emits particles from a nozzle near the player model's right arm, with velocity following view direction. First-person view applies an additional forward correction to that nozzle.

## Copying the stored command

Without Shift, the tooltip shows a copy hint. Holding Shift while opening or refreshing the tooltip copies the full stored command to the system clipboard. Paste it into the Designer, unwrap it, and create a new Tada after editing.

## Current limitations

Nozzle positioning still has an explicit left-hand and offhand TODO. Even when used from the offhand, visual placement is calculated from the right-arm model. Nonstandard player renderers may also be incompatible with its forced player-model cast. Test the actual skin, view, and hand before an event.

[Back to the MadParticle index](index)
