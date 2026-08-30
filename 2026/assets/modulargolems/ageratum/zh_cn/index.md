---
title: 傀儡装配
navigation:
  title: 傀儡装配
---

# 傀儡装配（Modular Golems）

Modular Golems 是由 lcy0x1（`dev.xkmc`，LGPL-2.1）开发的模组，将普通傀儡转变为模块化、可升级的伙伴。版本 `26.1.2.0+11+dungeon` 面向 Minecraft 26.1.2 与 NeoForge 26.1.2.42-beta，模组 ID 为 `modulargolems`。

## 本模组添加的内容

- **傀儡实体类型** —— `modulargolems:metal_golem`、`modulargolems:humanoid_golem`、`modulargolems:dog_golem`，以及 `modulargolems:beacon_laser` 弹射物。
- **模块化傀儡零件** —— 躯干/手臂/腿（金属傀儡还有左右与腿零件），由 `metal_golem_template` 用切石机切割而成。
- **材料** —— 由生成的 `modulargolems:vanilla` 配置以数据驱动方式定义：铜、铁、金、下界合金与幽匿（本分支未启用第三方材料集成）。
- **升级与修饰符** —— 大量 `modifier.modulargolems.*` 升级（攻击、再生、槽位、回收、海绵、游泳等）应用于傀儡；`max` 进度需要 12 个升级。
- **傀儡工作台** —— `modulargolems:golem_workbench` 方块，用于组装傀儡。
- **命令手杖、召唤手杖与回收手杖** —— 用于指挥、召唤与回收傀儡的工具。
- **多个自定义属性** —— `modulargolems:golem_regen`、`golem_sweep`、`golem_size`、`golem_jump`、`dynamic_reduction`。
- **成就树** —— 完整的 `advancements.modulargolems.golems` 系列，从第一个傀儡一直到组建一支军队。

## 阅读路线

- [获取开始](01_getting_started) —— 傀儡零件、模板与组装傀儡。
