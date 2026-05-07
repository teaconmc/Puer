---
title: "Getting Started"
navigation:
  title: "01 Getting Started"
---

# Getting Started

## Requirements

The current development snapshot targets Minecraft `26.1.2`, provides Fabric and NeoForge implementations, and requires **AAA Particles** `2.1` or newer. AAA Particles loads and plays the Effekseer resources; this mod connects those resources to world events.

Fabric metadata declares a client environment. The NeoForge build likewise performs visual initialization and configuration registration from its client entry point. There is no gameplay system that depends on server-side state.

## Activation

Effects become active automatically after entering a world. No held item, command, or key binding is required, and every feature defaults to enabled.

The NeoForge build registers a mod configuration screen that compatible mod lists can open. The Fabric build registers the same client specification through Forge Config API Port; availability of a graphical screen depends on the installed environment, while the settings themselves remain the same.

## Quick verification

Use any of these events to confirm that the mod is running:

1. Land a normal or enchanted critical hit on an entity.
2. Observe a lightning bolt from a safe distance.
3. Observe a small or large explosion.
4. Drop an item whose displayed name uses a non-white rarity color and watch for its beam and landing sound.

If only one category is unchanged, inspect its individual toggle. If every category is unchanged, verify that AAA Particles loaded, Minecraft particles are not set to Minimal, and AAA Particles does not report the native platform as unsupported.

## Next steps

- For exact trigger conditions: [World Effects](02_world_effects)
- For toggles and limits: [Client Configuration](03_configuration)
- For missing effects or frame-rate issues: [Compatibility and Performance](04_compatibility_and_performance)

[Back to index](index)
