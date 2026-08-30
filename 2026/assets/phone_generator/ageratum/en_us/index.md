---
title: Phone Generator
navigation:
  title: Phone Generator
---

# Phone Generator

**Phone Generator** (mod id `phone_generator`, version `1.0.0`, MIT) turns a real phone into a power source. Place the generator, and it renders a **QR code on its own face**; scan that code with a phone, and what you do on the phone becomes Forge Energy in the world.

It ships **two blocks, one entity, no recipes**, and it depends on an **external web service** to work at all.

## Reading guide

- [01 Getting started](01_getting_started) — obtaining both blocks and getting the first connection.
- [02 Power and the fan](02_power_and_fan) — energy levels, output, and what the Small Fan does with it.
- [03 Network, privacy and self-hosting](03_network_privacy_and_hosting) — what leaves your machine, and how to point it at your own server.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id | `phone_generator` |
| Version / license | `1.0.0` / MIT |
| Minecraft | range `[26.1.2,26.2)` |
| **Dependencies** | **none beyond `neoforge` + `minecraft`** |
| Blocks | **2** — `generator`, `motor_block` |
| Entities | **1** — `fan_entity` (a thrown fan blade) |
| **Recipes** | **none** |
| Loot tables | 2 — both blocks drop themselves |
| Commands | 1, **gamemaster-gated** |
| Config options | 8 general + 12 under `fan` |
| Languages | `en_us` + `zh_cn`, **15 keys each** |

## Read this first

::: warning
**This mod does not work offline.** The generator asks a web service to create a "room", renders the returned join URL as a QR code, and then holds a Socket.IO connection to that service. With no reachable server you get the on-block messages *Connecting… → Server unreachable → Reconnecting…* and **no power at all**.

The default server is **`http://phone-generator.karlcx.cn:10841`** — a third-party address baked into the config, over **plain HTTP**. See [Network, privacy and self-hosting](03_network_privacy_and_hosting) before deploying this on a server you care about.
:::

::: info
**Neither block has a recipe.** There is no `recipe/` directory in the mod at all, so both the generator and the Small Fan are creative-mode or `/give` only. Both do have loot tables and drop themselves when broken.
:::

## The chain, end to end

1. **Place the generator.** It contacts the API server and creates a room.
2. **The block face shows a QR code** encoding a join URL — the URL carries your player name and UUID.
3. **Scan it with a phone** and interact on the phone side.
4. **Your activity becomes a "level"**, which the server pushes back to the game.
5. **The level maps to energy**: `100 / 500 / 2000 / 5000` FE by default for levels 1–4.
6. **Energy is pushed to adjacent blocks**, up to 100 FE per tick by default.
7. **Optionally, feed it to the Small Fan** — which spins up and launches a fan blade you can ride. See [Power and the fan](02_power_and_fan).
