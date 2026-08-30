---
title: "我的尖塔"
navigation:
  title: "我的尖塔"
---

# 我的尖塔

我的尖塔（Mine the Spire，`minethespire`）把卡牌构筑肉鸽的战斗语汇搬进生存 Minecraft：装在专用 Curios 槽位里的**遗物**、围绕你自动攻击的**充能球（Orb）**、垫在生命条下方的**格挡值**护盾层，以及决定「进入战斗」类加成何时触发的服务端**战斗状态**。

模组目前处于早期版本（`0.0.1`）。遗物注册表中有很大一部分是已注册但尚未实现的占位物品——本文档会明确标出哪些遗物真正有效果、哪些目前完全没有行为。

## 速览

| 项目 | 值 |
|:---|:---|
| 模组 ID | `minethespire` |
| 模组名 | Mine the Spire |
| 包名 | `forever.pajang.minethespire` |
| 版本 | 0.0.1 |
| 许可 | GPL v3.0 |
| Minecraft | 26.1.2 |
| NeoForge | 26.1.2.71 |
| 已注册物品 | 79 个（其中 67 个是遗物） |
| 方块 | 无——`ModBlocks` 是一个空类 |
| 实体 | 6 个（4 种 Orb + 2 种弹射物） |
| 状态效果 | 11 个 |
| 药水 | 12 个 |
| 伤害类型 | 3 个 |
| 自定义属性 | 9 个 |
| Curios 槽位 | `spire_relic`（容量 8）、`orginal_spire_relic`（容量 1） |
| 命令 | `/mts combat`、`/mts clearMindBloom`、`/mts orb` |
| 合成配方 | 1 个（`minethespire:spirit`） |
| 可选兼容 | Curios、Jade、JEI |

## 阅读路线

- [01 上手](01_getting_started) —— 当前真正存在的内容，以及如何获得
- [02 遗物系统与 Curios 槽位](02_relics_and_curios) —— 两个槽位、遗物表，以及每件遗物的真实效果
- [03 Orb 系统](03_orbs) —— 引导、上限，以及四种 Orb
- [04 状态效果](04_effects) —— 11 个自定义效果及其注册事实
- [05 药水与酿造](05_potions_and_brewing) —— 12 种药水与真实酿造材料
- [06 伤害类型与战斗](06_damage_and_combat) —— 3 种伤害类型、荆棘与战斗状态
- [07 格挡值与 HUD](07_hud_and_blocking) —— 护盾层、HUD 行与 Jade 读数
- [08 命令与配置](08_commands_and_config) —— 命令语法、权限，以及全部配置项
- [09 与其他模组一起玩](09_compat_and_mixins) —— Curios 遗物栏、Jade 提示，以及 46 件尚无效果的遗物

## 事实范围说明

以下全部内容取自当前源码检出与其生成资源。凡代码与注释、翻译文本或明显意图相矛盾之处，本文档记录**代码实际行为**并指出矛盾，而不会擅自「修正」。
