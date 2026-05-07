---
title: "Super Lead"
navigation:
  title: "Super Lead"
---

# Super Lead

Super Lead turns the vanilla lead into a universal connection tool. With a single rope you can carry redstone signals, energy, items, fluids and even gases between distant blocks. Ropes sag and swing with real client-side physics, let you hang decorations along their length, and can be ridden as ziplines.

## Reading Order

1. [Getting Started](01_getting_started): crafting the Super Lead, placing and upgrading ropes, hanging items and riding ziplines.

## At a Glance

| Item | Current Implementation |
|:---|:---|
| Mod ID | `super_lead` |
| Source target | Minecraft 26.1.2 / NeoForge 26.1.2.76-beta |
| Creative tab | Vanilla `tools_and_utilities` |
| Registered items | `super_lead:super_lead`, `super_lead:basic_cargo_manifest`, `super_lead:advanced_cargo_manifest`, `super_lead:preset_binder`, `super_lead:attachment_tuner` |
| Registered blocks | None (no custom blocks) |
| Data components | `super_lead:cargo_manifest_items`, `super_lead:preset_binder` |
| Per-dimension saved data | `super_lead:lead_connections` |
| Rope kinds | `normal`, `redstone`, `energy`, `item`, `fluid`, `pressurized`, `thermal`, `ae_network` |
| Client keybinding | `key.super_lead.open_config` (unbound by default, MISC category) |
| Config | Common config (`super_lead-common.toml`) |

### Rope Kinds

| Kind | Conversion material | Upgrades | Purpose |
|:---|:---|:---|:---|
| Normal | — | — | Decorative/passive rope |
| Redstone | Redstone Block | — | Bidirectional redstone signal |
| Energy | Iron Block | Redstone Block (tier) | FE transfer |
| Item | Hopper | Chest | Item transport with routing |
| Fluid | Cauldron | Bucket | Fluid transfer between tanks |
| Pressurized | Steel Block (Mekanism) | Reinforced Alloy | Chemical/gas transfer |
| Thermal | Copper Block (Mekanism) | Reinforced Alloy | Heat transfer |
| ME Cable | Fluix Block (AE2) | 16³ space components | AE2 channel bridging |

::: note
Lead kinds beyond `normal`, `redstone`, `energy`, `item` and `fluid` depend on optional mods: `pressurized` and `thermal` require Mekanism, and `ae_network` requires Applied Energistics 2.
:::
