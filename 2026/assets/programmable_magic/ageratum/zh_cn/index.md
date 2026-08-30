---
title: Programmable Magic
navigation:
  title: Programmable Magic
---

# Programmable Magic（可编程魔法）

Programmable Magic（模组 ID `programmable_magic`，版本 `0.1.3`）是 CreepeBucket 开发的科技魔法模组（GNU GPL 3.0，`org.creepebucket.programmable_magic`），目标 Minecraft 26.1.2 / NeoForge（`26.1.2.66-beta`），集成 JEI 与 GeckoLib。你用**可堆叠的法术 token 拼装出咒语**，把其**绑定进法杖**，并通过**魔力网络**供能。

## 模组内容

- **法杖** —— `rg_alloy_wand`（1000 魔力、充能 5）带完整 GUI；`wand_item_placeholder`；以及存储/释放/供应/打包/配色插件。
- **可编程咒语** —— 数十种 `spell_display_*` token：数字、数学、向量、流程控制、触发器与世界/实体效果，以 `spell_entity` 弹射物发射。
- **魔力网络** —— `basic_mana_connector` 节点与 `NetworkManaManager`；机器 `solar_panel`、`wind_turbine`、`dummy_block`。
- **命令与 JEI** —— `/prm` 命令与完整 JEI 集成。

## 阅读路线

- [获取开始](01_getting_started) —— 法杖与创造标签。
- [法杖与咒语](02_wand_and_spells) —— 法杖 GUI、插件与施法。
- [咒语编程](03_spell_programming) —— 咒语 token 库。
- [魔力网络与机器](04_mananet_and_machines) —— 供能与自动化。
