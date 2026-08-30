---
title: Semantic keys
navigation:
  title: Semantic keys
---

# Semantic keys

Kord's core idea: a key binding is not a physical key but a **semantic key**. `KeySemantic` / `KeySemanticManager` (`key_semantics` datapack listener) and `KeyContext` link an action's meaning to whichever physical key is currently assigned, so the same intent stays valid even if the key changes or conflicts.

## Key pairs and evaluation

The resolver works on `KeyPair`s (the "chord" of modifier + base key). `Evaluator` considers:

- **Intent** — `Intent` / `IntentList` describe what an action means and how strongly it wants a key.
- **Modality** — `Modality` distinguishes modes (e.g. normal vs. timed/held) so the same physical chord can carry different meanings.
- **Mutex sets** — `MutexSet` / `MutexSetManager` (`mutex_sets`) and the m²utex state tree (`AndNode` / `OrNode` / `NotNode` / `LeafNode`) let actions exclude each other.
- **Same type & redirect** — `SameType` and `RedirectMode` handle actions that share an intent or are redirected.

## Sources

Key semantics come from `KeyDefinition` (via `KeySemanticManager`) and can be overridden with `OverrideDefinition`.

[Back to index](index)