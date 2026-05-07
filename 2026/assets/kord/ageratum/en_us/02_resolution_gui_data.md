---
title: Resolution, GUI and data
navigation:
  title: Resolution, GUI and data
---

# Resolution, GUI and data

## Conflict resolution

`ConflictResult` / `ConflictRisk` with `Severity` and `RiskTag` report how a binding collides, so the resolver can prefer the best assignment and surface the rest. `Scene` and the risk `Collector` (context `IntentTag`/`ModalityTag`/`RedirectTag`/`ResourceTag`/`StateTag`) describe where a conflict happens.

## Overrides

`OverrideManager` with `OverrideType` and `Origin` lets datapacks force or revert assignments (`override` listener), giving pack authors final control over the key layout.

## GUI

- **`KeyBindingScreen`** — a key-binding selection screen built from `KeyBindingSelectionListWidget`; `Backend` / `EventHandler` drive it.
- **Config** — the mod registers a config screen factory showing `KeyDiag` (a diagnostic view), plus `KeyDiag` internals.
- **Mixin** — `MixinKeyMapping` hooks vanilla key mapping client-side.

## Datapack reload

The mod registers five reload listeners under the `kord` namespace: `contexts`, `mutex_sets`, `resources`, `key_semantics` and `overrides` (contexts/mutex/resources/semantic/override definitions all load via `AddClientReloadListenersEvent`).

[Back to index](index)