---
title: Devices
navigation:
  title: Devices
---

# Devices

The three core devices move item streams between slots using NeoForge's `ItemResource` handler API with transaction-safe `Transaction`/`TransactionContext` operations. All are block entities extending the shared `BaseEtherContainerBlockEntity`.

## Ether Stream Emitter

**`ether_stream_emitter`** pushes item-resource streams out along a direction, feeding downstream devices.

## Ether Process Factory

**`ether_process_factory`** processes item inputs into outputs under `EtherProcessFactoryRecipe`. Four tiers exist as separate items: `ether_process_factory_lv_1`, `_lv_2`, `_lv_3`, `_lv_4` (higher tiers handle larger/longer recipes).

## Ether Adapt Node

**`ether_adapt_node`** adapts and routes item streams between incompatible layouts. Three tiers as items: `ether_adapt_node_lv_1`, `_lv_2`, `_lv_3`.

All three blocks register the `EtherContainer` capability and the Item capability so other mods can integrate.

[Back to index](index)