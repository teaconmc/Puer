---
title: Mana network and machines
navigation:
  title: Mana network and machines
---

# Mana network and machines

## Mana network

`NetworkManaManager` runs the mod's power grid, stored per-net in `NetworkManaData`. **`basic_mana_connector`** is the node block (block entity `basic_mana_connector`) that joins the network and routes mana between machines and wands; `NetNodeBlockEntity` is the shared node base.

## Machines

- **`solar_panel`** — generates mana from daylight (`SolarPanel` / `SolarPanelBlockEntity`, `solar_panel_menu`).
- **`wind_turbine`** — generates mana from wind (`WindTurbine`, `WindTurbineBlockEntity`, `machine_menu`).
- **`dummy_block`** — a placeholder machine block (`DummyBlock`).

`BasicMachine` is the base for machine behaviour; `BasicMachineReachHandler`/`BasicMachinePlacementPreview`/`BasicMachineItemHelper` help place and preview machines (`BasicMachinePlacementPreview`).

## Commands & JEI

- **`/prm`** (`PrmCommand`, via `CommandHandler`) — management command for the mod.
- **JEI** — `JEIPlugin` exposes recipes and spell usage.
- **Datagen** — `ModDataGenerators`, `GeneralItemModelProvider`, `SpellItemModelProvider`, `WandPluginItemModelProvider`.

[Back to index](index)