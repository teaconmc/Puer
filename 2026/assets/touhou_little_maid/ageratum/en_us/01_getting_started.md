---
title: "Getting Started"
navigation:
  title: "01 Getting Started"
---

# Getting Started

The fastest way to meet a maid is the **maid spawn egg** (`touhou_little_maid:maid_spawn_egg`). The fairy spawn egg summons the less common fairy companion, which also spawns naturally on the ground in the world.

## Owning a maid

1. Spawn a maid with the spawn egg.
2. Right-click her with an empty hand: the maids delegate the interaction to their misc manager, which handles picking them up, commands and equipment interactions.
3. Maids record favorability, chat bubble state and AI chat data in their save data together with their home position and radius.

The maid AI runs through several managers: a task manager for work and home modes, a favorability manager, an AI chat manager and a chat bubble manager. `isHomeModeEnable()` decides whether a maid stays near her home position (`setHomeTo(pos, distance)`); `getHomeRadius()` bounds her working area.

## Storing and carrying maids

The smart slab family stores a maid as a compact item:

- `smart_slab_init` — a slab that still needs initialization.
- `smart_slab_empty` — an empty slab ready to store a maid.
- `smart_slab_has_maid` — a slab already carrying a maid, right-click on the ground to release her.

Backpacks come in three sizes (`maid_backpack_small`, `maid_backpack_middle`, `maid_backpack_big`) and are placed on the maid to expand her inventory.

## The altar crafting system

The **altar** (`touhou_little_maid:altar`) block powers a custom recipe type (`touhou_little_maid:altar`). Generated altar recipes describe ingredients (item tags such as `#c:rods/wooden` or plain items like `minecraft:paper`), a required power value (for example `0.15`), the source entity and the resulting item. Most mod items — gohei, baubles, beds, the maids themselves via `reborn_maid`, spawn boxes and lightning-bolt spawning — are obtained through altar recipes, so the altar is the central progression machine of the mod.

Regular shaped and shapeless recipes cover the two gohei, dye-based bed recoloring, chairs and the entity id copy tool.

## Models, baubles and tools

- **Model switching**: `garage_kit` and `model_switcher` blocks plus the `chisel` item manage maid model appearance; `chair` and `chair_show` handle chair models.
- **Baubles**: six protect baubles reduce explosion (32 uses), fire (128), projectile (64), magic (128), fall (32) and drowning (64) damage; `ultramarine_orb_elixir` (6) and `nimble_fabric` (64) are special baubles, while `item_magnet_bauble` and `mute_bauble` are permanent ones.
- **Tools**: the camera (50 uses) takes photos, the extinguisher (128 uses) puts out fires, the kappa compass locates things, and the two fox scrolls, servant bell and trumpet help recall or summon companions.

## Commands and configuration

The root command is `/tlm` and requires gamemaster permission (`Commands.LEVEL_GAMEMASTERS`). Subcommands: `pack`, `power`, `maidnum`, `maiddebug`, `aichat`, `maid`, `backup`.

Server config includes `ClientPackDownloadUrls`, `MaidAITimeDebug`, `MaidBackupIntervalSeconds` (default 180) and `MaidBackupMaxCount` (default 3). Maid behavior is tuned in the maid subsection: global sound frequency (default 100), chat bubble toggle (default true), work/idle/sleep/non-home ranges, bow/crossbow/danmaku/trident ranges, gun recognition distances (64/48/32), feeding cap, model changing, gomoku owner limit, max maids per owner, the Allay replacement chance plus emoji weights, backpack blacklists, attack ignore lists and meal blacklists.

[Back to the Touhou Little Maid index](index)