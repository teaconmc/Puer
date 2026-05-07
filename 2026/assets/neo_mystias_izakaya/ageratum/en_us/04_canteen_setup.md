---
title: "Canteen setup"
navigation:
  title: "Canteen setup"
---

# Canteen setup

## Canteen controller placement

The Canteen block (`neo_mystias_izakaya:canteen`; item `neo_mystias_izakaya:misc/canteen`) is placed as a two-part structure. Placing the MAIN part also creates an invisible EXTENSION part beside it. Only the MAIN part has a ticking block entity; the EXTENSION delegates to it. Breaking the MAIN part removes the EXTENSION.

## Binding with Canteen Config

The Canteen Config item (`neo_mystias_izakaya:misc/canteen_config`) stores a `canteen_config` data component with controller position, linked positions, and optional scan corners.

- Right-click the controller with the config item to select it. With both corners set, right-clicking the controller instead scans the cuboid.
- After selecting a controller, right-click kitchenware, dining tables, cupboards or incubators to bind them.
- Right-click an ordinary block sets corner A; sneak-right-click an ordinary block sets corner B.
- Right-click air clears the corners.
- Sneak-right-click the controller clears the selected controller data; sneak-right-click a bound kitchenware, dining table or cupboard unbinds it.

The intended limits are 8 kitchenware, 8 dining tables, 4 cupboards and 4 incubators.

## Mystia's Hat and canteen menu

Mystia's Hat (`neo_mystias_izakaya:misc/mystias_hat`) is worn in the helmet slot. Selecting a controller syncs its data to the hat; the HUD and aggregate storage handlers read from the hat's copied config.

Right-click the controller with an empty hand to open the Canteen screen. The screen holds up to eight cuisines and eight beverages, lets you toggle between dish and beverage pickers, and shows the bound kitchenware. The open button is enabled only when the menu contains at least one cuisine, at least one beverage, and the controller has at least one bound kitchenware.

Opening or closing requires Mystia's Hat in the helmet slot. Opening the canteen syncs the controller config to the hat. Closing clears every linked dining table and clears the hat's canteen config.

## Current behavior notes

The incubator limit check currently counts `cupboardList` instead of the incubator list. If four cupboards are already bound, incubator scan/bind stops even when incubator slots remain. Controller validation also removes stale dining tables, kitchenware and normal cupboards, but not stale incubators. In addition, sneak-right-click does not put incubators into unbind mode in the current item code; incubators are classified as ordinary blocks there, so the action sets corner B instead.

[Back to index](index)
