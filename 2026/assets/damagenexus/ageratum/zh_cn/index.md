---
title: 伤害枢纽
navigation:
  title: 伤害枢纽
---

# 伤害枢纽（Damage Nexus）

「伤害枢纽」是 NaimJeg 的 TeaCon 2026 参赛作品，模组 ID `damagenexus`，组 ID `io.github.naimjeg`，版本 `0.1.0`，采用 **MIT** 许可，面向 Minecraft 26.1.2 与 NeoForge 26.1.2.75。其声明的描述是「Intercept and replace vanilla damage」（拦截并替换原版伤害）。

这是一个**框架模组，而非内容模组**。它不添加任何物品、方块、实体或配方，而是在攻击者与目标之间插入一整条伤害管线：传入的伤害先被归类到通道，再经过七个有序阶段，由规则与属性调整，最后才写回游戏。

## 安装前必须知道的一件事

原版兼容模式默认为 **`FULL_REPLACEMENT`（完全替换）**。在该模式下，伤害枢纽会**压制原版护甲、原版附魔缩放、原版状态效果缩放与原版内置抗性**，并全部由自己重新计算。因此安装本模组并非「叠加」，而是从第一天起就接管了伤害减免。把它加入现有存档前，请先阅读[07 它如何改变伤害](07_vanilla_compatibility.md)。

## 实际注册了什么

| 注册表 | 条目 |
|:---|:---|
| 物品 / 方块 / 实体 / 配方 | **无** |
| 属性 | **25 个**（暴击、闪避、9 个通道加成、9 个抗性、荆棘、治疗） |
| 数据组件 | 2 个：`damagenexus:damage_affixes`、`damagenexus:damage_entries` |
| 数据附件 | 2 个：`damagenexus:pending_jump_crit`、`damagenexus:damage_transactions` |
| 伤害通道（数据驱动） | 8 个 JSON 文件，另有内置 `untyped` |
| 伤害类型标签 | 19 个文件 |
| 其他标签 | `damagenexus:bosses`（实体类型）、`damagenexus:spears`（物品） |
| Mixin | 4 个 |
| 配置 | 一份 `COMMON` 文件，5 个小节 |
| 命令 | `/damagenexus`，**仅在某个诊断或开发者开关打开时存在** |

## 阅读路线

1. [01 入门](01_getting_started.md) —— 安装瞬间会改变什么，以及如何确认它在工作。
2. [02 伤害通道](02_damage_channels.md) —— 八个通道及其触发标签、护甲行为与优先级。
3. [03 管线与阶段](03_pipeline_and_phases.md) —— 七个阶段与九个应用桶。
4. [04 属性](04_attributes.md) —— 全部 25 个属性的真实默认值与取值范围。
5. [05 规则与数据包](05_rules_and_datapacks.md) —— 24 个条件、14 个操作、规则提供器与叠加方式。
6. [06 词条与条目](06_affixes_and_entries.md) —— 两个物品数据组件。
7. [07 它如何改变伤害](07_vanilla_compatibility.md) —— 默认替换原版减伤，且四个逐项开关默认不起作用。
8. [08 配置与诊断](08_configuration_and_diagnostics.md) —— 每个配置小节、诊断域与命令门控。

## 一览

| 关注点 | 详情 |
|:---|:---|
| 模组 ID / 名称 | `damagenexus` / Damage Nexus，v0.1.0，MIT |
| 作者 / 组 ID | NaimJeg / `io.github.naimjeg` |
| 版本目标 | Minecraft 26.1.2 / NeoForge `[26.1.2.75,)` |
| 默认兼容模式 | `FULL_REPLACEMENT` —— 原版减免被完全替换 |
| 通道 | 8 个随包 + `untyped` |
| 管线阶段 | 7 个 |
| 应用桶 | 9 个 |
| 内容物品 | 无 —— 通过数据包、属性与 Java API 配置 |
| 开箱可用命令 | 无 |
