---
title: Windows and Grilles
navigation:
  title: Windows and Grilles
description: Multi-block window grids, openable balconies, and why grilles refuse to connect to glass.
---

# Windows and Grilles

The window and grille families carry the most behaviour in the mod. None of it is explained in-game, so this is the page that saves you the most time.

## Framed windows are a grid, not a single block

`FramedWindowBlock` declares three properties:

| Property | Values |
|:---|:---|
| `FACING` | horizontal direction |
| `POS_HORIZON` | horizontal position within the window |
| `POS_VERTICAL` | vertical position within the window |

**This means a framed window is assembled from multiple blocks into one large opening.** Each block knows where it sits in the grid — left / middle / right crossed with top / middle / bottom — and renders its frame accordingly, so the mullions appear only on interior edges and the outer frame only on the perimeter.

Practically: place a 3×3 of framed window blocks and you get **one nine-pane window with a correct frame**, not nine separate windows with nine frames. The position states are derived on placement, so you just place them adjacent.

Three variants exist — `framed_window_1`, `framed_window_2`, `framed_window_3` — differing in frame proportion, plus `framed_window_slope` for the raked head of a window under a pitched roof.

::: tip
The pane's collision is `0,0,7 → 16,16,9` — **2/16 thick and centred**. In a one-block-thick wall the glass therefore sits recessed on both faces, which is what a real window in a masonry opening does. If you want it flush, build the wall one block thicker on the side you want flush.
:::

## Prefab balcony windows are two blocks tall and they open

`PrefabWindowBlock` declares:

| Property | Values |
|:---|:---|
| `FACING` | horizontal direction |
| `HALF` | `upper` / `lower` — it is a **double-height block** |
| `OPEN` | **true / false** |

So `prefab_window_balcony_*` is a **two-block-tall unit you can open and close**, like a door. This is the enclosed balcony window found on nearly every apartment of the period — and it is the only functional (state-changing) block in the mod.

Remember from [Special shapes](03_special_shapes) that these come in **mirrored left/right halves**: `_balcony_left` spans `x = 1..16`, `_balcony_right` spans `x = 0..15`. Place both side by side; one alone leaves a 1/16 gap.

Combined, a complete balcony is **four blocks**: left and right, each upper and lower.

## Grilles deliberately do not connect to glass

`SecurityGrilleBlock` is 217 lines — the most complex block in the mod. It is waterloggable, it takes its orientation from the clicked face (horizontal faces only), and it connects to neighbours to form continuous cages.

But the mod ships exactly one block tag, and it exists to stop one specific connection:

```
mirage2004:grille_no_connect
  #minecraft:impermeable
  mirage2004:curtain_glass_blue / _clear / _green
  mirage2004:window_glass_panel_blue / _clear / _green
```

**A grille placed against glass will not visually merge with it.** That is correct behaviour, not a missing feature: a real security grille is an independent steel frame bolted in front of the window, not part of the glazing. Without this tag the grille would fuse into the pane and lose its silhouette.

Note `#minecraft:impermeable` is in the list too, so grilles also stay separate from vanilla glass.

The grille family provides five pieces — `security_grille` panel, plus `grille_arch`, `grille_box`, `grille_cage`, `grille_cap` — which is enough to build the projecting cage-type grille as well as the flat panel type.

## Poles have vertical position too

`PoleBlock` carries `FACING` plus `POS` (vertical position), so a stacked pole knows whether it is the base, a middle segment or the top. Together with the `pole_arm` and `pole_base` families this gives a complete utility pole rather than a repeated post.

## Putting a facade together

The blocks are designed to be combined in a fixed order, and doing it out of order is the usual cause of things looking wrong:

1. **Wall** in a `qianxi_core` surface family.
2. **Framed window grid** set into the opening — place adjacent, let the position states resolve.
3. **Prefab balcony** where a balcony belongs — four blocks, left/right × upper/lower.
4. **Grille** in front of the glass — it will stay visually separate, as intended.
5. **Pole and wires** at the kerb, facing set per segment.

[Back to index](index)
