---
title: "Measurement Tools"
navigation:
  title: "04 Measurement Tools"
---

# Measurement Tools

Ecliptic Seasons provides three hand meters and one inspection item for reading the environment at your position.

## Hygrometer (block item)

The registered `eclipticseasons:hygrometer` is a block item for the Hygrometer block. Using it sends the current humidity classification (`ARID`, `DRY`, `AVERAGE`, `MOIST`, or `HUMID`) to the chat. Its recipe:

<recipe id="eclipticseasons:hygrometer"/>

- Calcite, glass panes, amethyst gems, copper ingots, and redstone dust
- → 1 Hygrometer

## Hyetometer and thermometer

`eclipticseasons:hyetometer` reports the current rainfall band at the player position. `eclipticseasons:thermometer` reports the current temperature band. Both are hand items:

<recipe id="eclipticseasons:hyetometer"/>

- Redstone dust, glass bottle, copper ingot → Hyetometer

<recipe id="eclipticseasons:thermometer"/>

- Redstone dust + Water Potion → Thermometer

::: note
The creative tab currently hides both hand meters (`hyetometer` and `thermometer` are skipped from `displayItems`), so survival crafting or `/give` is the normal way to obtain them.
:::

## Growth detector

`eclipticseasons:growth_detector` inspects a plant when you use it on the block and reports its current growth environment: agro-climatic zone, greenhouse-room status, and an estimated grow chance.

<recipe id="eclipticseasons:growth_detector"/>

- Glass panes, glass block, wooden rod → Growth Detector

The detector only reports in `growthDetectorClassicMode` and only for blocks that have a crop-control entry in `CropGrowthHandler`. It does not alter the plant.

[Back to the Ecliptic Seasons index](index)
