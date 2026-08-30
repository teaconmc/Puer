---
title: Getting started
navigation:
  title: Getting started
---

# Getting started

MTR-NTE adds its content to the existing MTR creative tabs: `eye_candy` sits in the station building blocks tab and `one_way_gate_1` in the railway facilities tab, while the three tools (`bridge_creator_1`, `rail_editor_visual`, `rail_editor_geometry`) are placed in the core MTR tab.

## Decoration objects

The `eye_candy` block renders a decorative object defined by an eye-candy script. It is a full block entity container; the blockstate and item model are provided under `assets/mtrsteamloco`. Eye-candy files live in resource packs under `assets/mtrsteamloco/eyecandies/` (an example `teapot.json` ships with the mod). The block always renders at full light by default (`gui.mtrsteamloco.eye_candy.full_light`), and resource pack authors can define their own objects there.

## One-way gate

`one_way_gate_1` is a railway facility gate that allows one-way passage, useful for station fare control layouts alongside MTR's turnstiles.

## The bell

A small station bell (`mtrsteamloco:bell`) is registered as a sound event; it is used by the departure bell block `mtrsteamloco:departure_bell` when present.

## Client configuration

The `/mtrnte config` command opens the NTE client configuration screen (server configuration is not provided; the config lives on the client, e.g. `ClientConfig.hideRidingTrain` toggled by `/mtrnte hideriding`).

[Back to index](index)