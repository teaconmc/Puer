---
title: "Mini Steam Engine"
navigation:
  title: "01 Mini Steam Engine"
items:
  - "industrybase:steam_engine"
  - "industrybase:creative_steam_engine"
---

# Mini Steam Engine

<block id="industrybase:steam_engine"/>

## Placement axis

The Steam Engine takes its axis from the face clicked during placement: east or west gives X, top or bottom gives Y, and north or south gives Z.

That axis also determines its interfaces:

- The two ends of the axis output mechanical power.
- The four faces perpendicular to the axis expose fluid capability for water insertion and external fluid devices.

Use a water bucket on a fluid face. Clicking an axial end does not expose the tank and inserts no water.

## Water and fuel

A normal Mini Steam Engine holds `2000 mB`, or two buckets, of water. Use a water bucket on a valid fluid face to insert up to `1000 mB`. Right-click with an empty hand or another item to open its single fuel slot, which accepts vanilla furnace fuels.

Fuel starts burning only while the tank contains water. The lit block emits light level `13`, and each fuel uses its normal smelting burn time. Comparator output measures the fullness of the one-slot fuel container, not water level or mechanical power.

::: warning
Bucket interaction does not first verify that the full bucket can be accepted. With less than `1000 mB` of free space, the held bucket still becomes empty and any excess is lost. Check the menu's water level before topping up a nearly full tank.
:::

## Power changes

While the engine has water and burning fuel, output power rises by `1` each tick up to `100`. When it is dry or no longer burning, power falls by `1` each tick until zero.

A newly lit machine therefore does not provide full output immediately, and its mechanical network coasts down after fuel expires. When water runs out, the fuel timer keeps decreasing even though power falls; refilling promptly makes use of the remaining burn time.

The engine menu displays water, power, and speed. Power is what the machine contributes to the network; actual speed also depends on the total resistance of the entire mechanical network.

## Creative Mini Steam Engine

The Creative variant is available only from the Creative inventory and has no crafting recipe. On load, it sets mechanical power directly to `100` and needs neither water nor fuel. Its axis interfaces match the normal engine, making it useful for network tests.

[Back to the IndustryBase index](index)
