---
title: "Compatibility content"
navigation:
  title: "08 Compatibility"
---

# Compatibility content

Calypso's Candy Workshop registers optional content only when the matching mod is present. The compatibility modules add extra sugar ingredients (and sometimes items or flavors) to the same `ccw:sugar` / `ccw:flavor` / `ccw:formula` registries used by the core game.

## Apotheosis

When Apotheosis is loaded, four items are registered with recipes:

- `ccw:malignant_berry`
- `ccw:knowledge_bottle`
- `ccw:erosion_shell`
- `ccw:vitality_berry`

<recipe id="ccw:malignant_berry"/>

<recipe id="ccw:knowledge_bottle"/>

<recipe id="ccw:erosion_shell"/>

<recipe id="ccw:vitality_berry"/>

They also identify four added sugars: `ccw:grievous`, `ccw:sundering`, `ccw:vitality` and `ccw:knowledge`.

## Farmer's Delight

With Farmer's Delight, `ccw:glazed_meat_rice` is added (12 nutrition and Farmer's Delight nourishment), together with the `ccw:nourished` sugar. Its cooking recipe is stored as `ccw:cooking/glazed_meat_rice`.

<recipe id="ccw:cooking/glazed_meat_rice"/>

## Fruits Delight

With Fruits Delight, sixteen fruit-based sugars are registered, each using the corresponding Fruits Delight jello as its main ingredient:

`ccw:bayberry`, `ccw:blueberry`, `ccw:chorus`, `ccw:cranberry`, `ccw:durian`, `ccw:fig`, `ccw:hawthorn`, `ccw:kiwi`, `ccw:lemon`, `ccw:mango`, `ccw:mangosteen`, `ccw:orange`, `ccw:peach`, `ccw:persimmon`, `ccw:pineapple`, `ccw:snow_pear`.

## Kaleidoscope Cookery

With Kaleidoscope Cookery, eight sauce items are registered: `ccw:sweet_and_sour_meat_sauce`, `ccw:fresh_veggie_sauce`, `ccw:lacto_bolt_red_sauce`, `ccw:sashimi_side_sauce`, `ccw:ultra_rich_marrow_cream`, `ccw:silenced_sauce`, `ccw:hearth_warm_marrow_cream` and `ccw:lamb_carrot_sauce`. The current source generates no crafting recipes for these sauces; they serve as main ingredients for the matching sugar entries. The module also registers the `ccw:nutritious` flavor and these sugars:

`ccw:sweet_and_sour_meat`, `ccw:veggie_fresh`, `ccw:lacto_bolt`, `ccw:sashimi`, `ccw:tallow`, `ccw:phanto_bye`, `ccw:broth_warm`, `ccw:mutton_dash`.

## Neapolitan

With Neapolitan, six sugars are registered: `ccw:hoohoo_haha`, `ccw:hoohoo_smooth`, `ccw:mint`, `ccw:red_bean`, `ccw:vanilla` and `ccw:sugar_rush`.

## Youkai's Feasts

With Youkai's Feasts, five sugars are registered: `ccw:green_tea`, `ccw:white_tea`, `ccw:black_tea`, `ccw:oolong_tea` and `ccw:udumbara`.

## Youkai's Homecoming

With Youkai's Homecoming, the same tea/udumbara sugars are registered plus `ccw:youkai_coffee`: `ccw:green_tea`, `ccw:white_tea`, `ccw:black_tea`, `ccw:oolong_tea`, `ccw:udumbara` and `ccw:youkai_coffee`.

::: note
Compatibility IDs are only valid at runtime when the corresponding mod is loaded. Without the partner mod, those items and sugars are not registered, and their formula files are not active.
:::

[Back to the CCW index](index)
