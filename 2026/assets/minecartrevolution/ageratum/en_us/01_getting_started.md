---
title: Getting started
navigation:
  title: Getting started
---

# Getting started

The `minecartrevolution:wrench` (stacks to 1) is your primary tool. All mod minecarts appear in the dedicated **MinecartRevolution** creative tab (`minecartrevolution:item_group`, shown before Combat, icon = vanilla minecart), alongside the vanilla minecart/furnace/hopper/chest/TNT minecarts.

## The transformation system

`MinecartTransformManager` and the `@MinecartMapper` annotations drive a block/item → minecart transformation pipeline. `MinecartTransformConfig` lets you configure which transformations are enabled and how they behave. A dedicated `ForceCompatRegisterPacket` lets clients opt into "force compat" mode, tracked in the server's `FORCE_COMAPTERS` list.

## Dispenser behaviour

Every registered minecart registers a dispenser behaviour, so you can dispense the `minecart_<block>` items from a dispenser onto rails instead of only placing them by hand.

## Where the minecarts come from

Each minecart has a corresponding item named `minecart_<base>` (for example `minecart_barrel`, `minecart_beacon`, `minecart_water`) plus an `EntityType`; most place a representative block as their display block. All of them are placed in the MinecartRevolution creative tab.

[Back to index](index)