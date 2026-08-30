---
title: "Tools, Guidebook, and Known Issues"
navigation:
  title: "14 Tools, Guidebook, and Known Issues"
items:
  - "ashihara:charlotte"
  - "ashihara:koishi"
---

# Tools, Guidebook, and Known Issues

`P` toggles an in-world tooltip only for the debug Charlotte block; it is not a general help key for every device. `Alt+C` toggles eating mode for filled tableware, and `Alt+mouse wheel` changes horizontal grid precision. The mod has no custom commands or configuration file.

The bundled Guidebook currently contains debug, placeholder, and unrelated text, and its Chinese and English content does not match. It can demonstrate the 3D page system but should not guide survival progression.

## Known breaks and debug content

- The grass-seed loot modifiers are not included in the global list.
- Dried Rice Crop has no downstream use; the food route must start from Wild Rice Paddy.
- The Pot, Cookstove, Basin, Vat, and Large Vat have no crafting recipes.
- The Basin cannot toggle its lid and cannot run air-required pickling; the Large Vat has no supported recipe.
- `ashihara:test` exposes a Cobblestone -> Lava test Pot recipe, and `ashihara:chick` exposes a debug Mortar recipe.
- An `ashihara:pail` recipe exists, but the Pail item registration is commented out, making that recipe invalid.
- Offhand furniture placement may fail while the main hand is occupied.

::: warning
A test recipe appearing in a recipe viewer does not make it designed survival progression. Servers can remove test and invalid recipes with a data pack and add explicit sources for missing equipment.
:::

[Back to the Ashihara index](index)
