---
title: Kord
navigation:
  title: Kord
---

# Kord（和弦）

Kord (mod id `kord`, version `1.0.0`) is a client-side key-binding framework by lnatit (`com.lnatit.kord`) for Minecraft 26.1.2 / NeoForge (`26.1.2.36-beta`), registered with `@Mod(dist = Dist.CLIENT)`. Instead of raw key conflicts, it treats key bindings as **semantic keys** and resolves them like musical **chords** (a `KeyPair`), assigning each action a key while detecting and grading conflicts.

## What it offers

- **Semantic keys** — physical keys map to semantic bindings (`key_semantics`), so the same action intent is key-agnostic.
- **Chord resolution** — `Evaluator` weighs intents, modality and mutex state trees to pick the final key per `KeyPair`.
- **Conflict risk** — the resolver reports conflicts with severity and scenes instead of silently clashing.
- **Data driven** — contexts, mutex sets, resources, key semantics and overrides reload from datapacks.
- **Custom GUI** — a key-binding selection screen (`KeyBindingScreen`) and a config `KeyDiag` screen.

## Reading path

- [Semantic keys](01_semantic_keys) — mapping actions to semantic bindings.
- [Resolution, GUI and data](02_resolution_gui_data) — chord evaluation, conflict risk and the screens.
