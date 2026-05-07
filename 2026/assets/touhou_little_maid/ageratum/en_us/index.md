---
title: "Touhou Little Maid"
navigation:
  title: "Touhou Little Maid"
---

# Touhou Little Maid

Touhou Little Maid (`touhou_little_maid`) is a companion mod inspired by LittleMaidReengaged. Maid entities follow their owner, chat with speech bubbles and an AI chat system, gain favorability, carry backpacks and baubles, and can be stored as compact items. The mod also adds the altar crafting system, model switching blocks, maid beds, decorative blocks and a set of utility tools.

## Reading order

1. [Getting started](01_getting_started): obtaining and storing maids, the altar, model switching, equipment and commands.

## At a glance

| Topic | Current implementation |
|:---|:---|
| Mod id | `touhou_little_maid` |
| Entities | maid, fairy (natural spawn), chair, broom, box, sit, tombstone, fishing hook, danmaku, extinguishing agent, power point, throwable power point |
| Blocks | 7 colored maid beds, altar, statue, garage kit, maid beacon, model switcher, picnic mat, gomoku, Chinese chess, Western chess, keyboard, bookshelf, computer, shrine, scarecrow, snack cabinet |
| Items | maid/fairy spawn eggs, 3 backpack sizes, hakurei and sanae gohei, 6 protect baubles plus special baubles, smart storage slabs, camera/photo/film, fox scrolls, servant bell, trumpet, wireless IO, kappa compass, extinguisher, chisel, chairs and more |
| Creative tabs | `main`, `garage_kit` (chair models), `chair` (garage kits) |
| Commands | `/tlm` with `pack`, `power`, `maidnum`, `maiddebug`, `aichat`, `maid`, `backup` |
| Crafting | regular recipes plus the `touhou_little_maid:altar` recipe type driven by the altar block |

::: note
The maid spawn egg and fairy spawn egg are the direct entry points; the altar block powers a dedicated recipe type used by most mod items. The current source also ships an emoji chat feature, favorability tools and backup commands mainly aimed at server administrators.
:::