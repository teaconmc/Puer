---
title: "Crop stands"
navigation:
  title: "Crop stands"
---

# Crop stands

## Crop Stand (`harvestheritage:crop_stand_block`)

Craft it from four Sticks:

<recipe id="harvestheritage:crop_stand_block"/>

- 4 Stick
- → 1 Crop Stand

The Crop Stand must be placed on **Farmland**. It does not collide with entities, and farmland directly below a Crop Stand is protected from trampling.

### Planting

Right-click the stand with a **Seed Packet** to plant it; one packet is consumed. The stand stores the packet's seed, speed, output, and its own growth stage.

### Growth

The stand grows through random ticks. Every roll has a `1/3` chance to advance a stage at speed `1`; higher speed makes growth effectively certain. A seed's required stage comes from its category — for example most crops need `3` stages and material seeds need `3..6`.

### Harvesting

When the current stage reaches the seed's required stage, right-click the stand while holding an ordinary item (not a Seed Packet or Grass Shear) to harvest. Every result item of the seed drops in a quantity from `1` to the packet's `output`, then the stage resets to `0`. The same seed packet stays planted and can grow again.

Using a **Grass Shear** on a planted stand removes the packet at any growth stage and drops it as an item with its current speed and output, resetting the stand to empty.

## Hanging Crop Rack (`harvestheritage:scaffolding_crop_stand_block`)

Right-click **vanilla Scaffolding** with a Seed Packet. The scaffolding block is replaced by a Hanging Crop Rack and the packet is planted (one is consumed).

The rack keeps vanilla scaffolding behavior: it tracks stability distance, can be extended sideways like scaffolding, and falls when unsupported. It does **not** need farmland, and its tooltip recommends placing it a few blocks above the ground.

It grows and harvests exactly like the normal Crop Stand, but it never starts a cross and an empty rack never receives a cross (see [Hybridization](05_hybridization)). Its block loot is the vanilla Scaffolding it replaced, not the rack item.

## Reading a stand with the Magnifying Glass

While holding or wearing a Magnifying Glass, looking at a planted stand shows a center overlay with:

- the planted seed,
- the seed's required growth stage,
- the stand's current stage,
- the packet's speed and output.

::: note
Datapack seed definitions may require a block under the stand; that check looks **two blocks below** the stand. The built-in seeds have no block requirement. A separate mixin also treats Farmland as near water when a Wet Sponge is below it.
:::

[Back to index](index)
