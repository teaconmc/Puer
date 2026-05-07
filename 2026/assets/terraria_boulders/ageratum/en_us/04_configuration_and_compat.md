---
title: Configuration and compatibility
navigation:
  title: Configuration and compatibility
---

# Configuration and compatibility

## Configuration

The mod registers its config through `ModConfigs.register(modContainer)` with the NeoForge config system.

## Effects, sounds, damage and data

- **Status effects** — `ModEffects` registers custom mob effects (such as `choking` applied by eating `boulder_bread`).
- **Sounds** — `ModSounds` registers custom sound events.
- **Damage** — `ModDamageTypes` registers custom damage types.
- **Data components** — `ModDataComponents` registers custom components (e.g. `is_locked` for the camouflaged boulder).

## Networking

Packets are registered in a `PayloadRegistrar`, including `MountClickPayload` and `ServerHandler` for seat interaction.

## Datagen & compat

- `ModDatagen.gatherData` generates recipes/loot etc. on both client and server.
- The project declares optional **JEI** (`29.6.2.31`) and **Jade** (`26.1.5`) dependencies for integration.
- Client custom render types and shader utilities (`ModRenderTypes`, `ShaderUtil`) drive the special boulder visuals.

[Back to index](index)