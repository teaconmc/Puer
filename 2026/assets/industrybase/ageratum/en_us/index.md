---
title: "IndustryBase"
navigation:
  title: "IndustryBase"
---

# IndustryBase

IndustryBase provides three connected foundations: mechanical shafts, electricity, and water pipes. A complete conversion chain can be: **Mini Steam Engine -> Transmission Rod -> Dynamo -> electrical grid -> Electric Motor -> a second mechanical shaft**.

## Reading order

1. [Mini Steam Engine](01_steam_engine): add water and fuel and identify its mechanical and fluid faces.
2. [Mechanical network](02_mechanical_network): place rods and Axis Connectors and understand speed, resistance, and broken rods.
3. [Electrical network](03_electric_network): use Dynamos, Electric Motors, Wire Blocks, Wire Connectors, and Wire Coils.
4. [Water pipe network](04_fluid_network): connect Iron Pipes and Fluid Tanks and learn the current state of the Water Pump.
5. [Crafting recipes](05_recipes): view every crafting-table recipe shipped in the current resources.
6. [Troubleshooting](06_troubleshooting): inspect orientation, connections, loads, and incomplete features one stage at a time.

## Minimal build order

1. Place a Mini Steam Engine and attach a Transmission Rod to one end of its axis.
2. Connect the rod to the Dynamo's mechanical face.
3. Run Wire Blocks from the Dynamo's rear electrical face, or place a Wire Connector there.
4. Connect the grid to the rear electrical face of an Electric Motor.
5. Continue the new shaft from the Electric Motor's facing side.

::: warning
Machine interfaces are directional. Adjacent blocks are not necessarily connected; on a first build, verify each stage outward from the Steam Engine.
:::
