---
title: Works On My Machine
navigation:
  title: Works On My Machine
description: A developer utility that spins up a world from a configured world template on your local machine, so it "works on my machine".
---

# Works On My Machine

**Works On My Machine** (short `womm`) is a small development tool inspired by the classic "it works on my machine" joke. It lets a developer package the settings of a world into a *world template*, then reproduce that world on another client with a single command — so the same setup reliably "works on my machine" (and yours).

This mod adds no item, block, entity, or recipe. The only entry point is the `/womm` command together with the `world_templates` datapack data it reads.

## Reading Guide

- [Getting Started](01_getting_started.md) — the `/womm` command, how world templates are loaded, and the client-side world loading flow.

## Quick Reference

| Item | Value |
|:---|:---|
| Mod ID / namespace | `womm` |
| Command | `/womm <identity>` |
| Template data location | `data/<namespace>/world_templates/*.json` |
| Runtime | Client + Dedicated Server (singleplayer-safe) |
| Items / Blocks | none |
