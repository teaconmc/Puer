---
title: Engraving and Colour
navigation:
  title: Engraving and Colour
description: The two menus, the colour picker overlay, and the five data components that persist your work.
---

# Engraving and Colour

Beyond geometry, two systems change how a carrier looks: **engraving** and **colour**.

## The two menus

The mod registers exactly two menu types:

| Menu | Registry id | Opened by |
|:---|:---|:---|
| Engrave | `yuushya:engrave` | `engrave_item` |
| History | `yuushya:history` | `history_item` |

These are real server-side menus, unlike the carrier editing screens (`ShowBlockScreen`, `ItemBlockScreen`, `TextBlockScreen`), which are client screens driven by packets. That distinction matters for multiplayer: menu state is synchronised by vanilla machinery, while the screens rely on the mod's own nine packet types.

## Engraving

`engrave_item` opens the engrave menu against a carrier. The `engrave` package is one of the larger ones in the source (nine classes), so this is a full subsystem rather than a single toggle.

## The colour picker

`color_picker_item` works with the `COLOR_DATA` component, and it comes with something none of the other tools have: **a HUD overlay**.

The mod registers `PickColorOverlay` **above the crosshair** under the identifier `pick_color`, and colour choices travel on a dedicated `PickColorPacket`. So while the picker is in use you get live feedback at the centre of the screen rather than having to open a menu.

::: tip
Note that the overlay is registered under the **`yuushya_modelling`** namespace, not `yuushya` — the mod uses `MOD_ID_USED` for every client-side registration of this kind (overlays and all nine packet ids), while world content uses `MOD_ID`. If you are writing a compatibility patch, that split is where you will get caught.
:::

## The five data components

Everything a carrier remembers is stored in these, all under the `yuushya` namespace:

| Component | Holds |
|:---|:---|
| `BLOCKSTATE` | The captured appearance |
| `TRANSFORM_DATA` | The layer set and each layer's position / rotation / scale |
| `TRANS_DIRECTION` | The active axis or direction |
| `COLOR_DATA` | Colour applied via the picker |
| `SHAPE_DATA` | Shape information (`CompoundTag`) |

Because these are data components rather than block-entity-only state, they travel with the **item** as well as the block — which is exactly what makes pick-block duplication work (see [Carrier blocks](02_carrier_blocks)).

## Ambient occlusion control

There is an `UpdateAOPacket` (registered, slightly misspelled internally as `diable_ao_packet`) for toggling ambient occlusion behaviour. On composite builds where several layers meet at odd angles, vanilla AO can produce dark seams that look like gaps; being able to switch it off per build is the fix.

## Reloading models

If you edit the underlying model resources while the game is running, `/yuushya_reload_model reload` takes four scopes:

```
/yuushya_reload_model reload blocks
/yuushya_reload_model reload items
/yuushya_reload_model reload texts
/yuushya_reload_model reload all
```

On success it reports `Modellings reloaded successfully`. A `ReloadModelPacket` pushes the refresh to clients, so this works in multiplayer rather than only in single-player.

[Back to index](index)
