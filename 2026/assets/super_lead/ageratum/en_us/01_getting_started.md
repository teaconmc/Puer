---
title: "Getting Started"
navigation:
  title: "01 Getting Started"
items:
  - "super_lead:super_lead"
  - "super_lead:basic_cargo_manifest"
  - "super_lead:advanced_cargo_manifest"
  - "super_lead:preset_binder"
---

# Getting Started

## Crafting

| Result | Recipe | 
|:---|:---|
| `super_lead:super_lead` | one vanilla lead (shapeless) |
| `super_lead:basic_cargo_manifest` | paper + string |
| `super_lead:advanced_cargo_manifest` | basic cargo manifest + book |
| `super_lead:preset_binder` | paper + string + redstone + iron ingot |

`super_lead:attachment_tuner` has no recipe in the current data pack. All Super Lead items are added to the vanilla **Tools & Utilities** creative tab.

## Placing a Rope

1. Right-click a block face to set the first anchor. Anchors can attach to any block face, not just fences; fences and iron bars act as rope "knots".
2. Right-click a second block to create the connection.

Right-clicking the **same** anchor again consumes one vanilla lead and extends the rope by one length unit (up to 4×). Sneak + right-click an anchor lengthens an existing rope the same way. In creative mode the extension does not consume items.

## Upgrading Ropes

Hold a Super Lead and sneak + right-click with the matching material to convert or upgrade its kind in place:

- Redstone Block → Redstone Lead (bidirectional redstone signal)
- Iron Block → Energy Lead (FE transfer); Redstone Block then raises its tier
- Hopper → Item Lead (item transport with routing)
- Cauldron → Fluid Lead (fluid transfer)
- Steel Block (Mekanism) → Pressurized Lead (chemical/gas transfer)
- Copper Block (Mekanism) → Thermal Lead (heat transfer)
- Fluix Block (AE2) → ME Cable Lead (AE2 channel bridging)

Certain upgrade and connection actions are **sneak + right-click**; holding the same item without sneaking is used for decoration instead.

## Managing Ropes

- **Cut**: hold shears and right-click the rope (or a fence knot) to cut it and drop the items. Success damages shears for non-creative players.
- **Hang items**: with an attachable item in the main hand (lanterns, signs, blocks …) and a string in the off hand, right-click a rope to hang it. Signs can be dyed, glow-linked and edited in the world; left-click toggles block/item display mode.
- **Attachment Tuner / Preset Binder**: `super_lead:attachment_tuner` opens the per-attachment display config; `super_lead:preset_binder` manages saved rope presets.
- **Zipline**: hold an iron or copper chain and right-click a rope to ride it; press Shift to dismount.

## Cargo Manifests

Right-clicking `super_lead:basic_cargo_manifest` or `super_lead:advanced_cargo_manifest` opens a menu that filters which items an item lead transfers. The basic manifest filters by item; the advanced one adds tag and NBT matching (whitelist or blacklist, and optional exact-NBT match). Manifest contents are stored in the `super_lead:cargo_manifest_items` component.

## Configuration

The common config (`super_lead-common.toml`) includes `energy.base_transfer_per_tick` (default 256 FE/t at tier 0), `energy.tier_max_level` (default 30), `network.max_leash_distance` (default 12 blocks per length unit, 4–32), `network.max_ropes_per_block_face` (default 8), `network.item_transfer_interval_ticks` (default 4), `network.fluid_bucket_amount` (default 1000 mB), tier caps for item/fluid/pressurized/thermal leads, and `presets.allow_op_visual_presets`.

## Controls and Dependencies

The mod registers one client keybinding, `key.super_lead.open_config`, in the MISC category; it is unbound by default and opens the tuning config screen. Ropes are stored per dimension in the `super_lead:lead_connections` saved data. Mekanism (for pressurized/thermal leads) and Applied Energistics 2 (for ME Cable leads) are optional integrations.

[Back to index](index)
