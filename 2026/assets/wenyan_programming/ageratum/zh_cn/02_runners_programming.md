---
title: 执行器与编程
navigation:
  title: 执行器与编程
---

# 执行器与编程

## 执行器

- **`RunnerItem`**（手持执行器）是 tier 化物品（`RunnerTier.RUNNER_0` 起）；其 tier 集方块（`RunnerBlock` + `RunnerBlockEntity`）与各 tier 对应。
- **`ThrowRunnerItem`** 让你投出程序；`throw_runner` 实体承载它。

## 解释器

文言程序先被编译，再针对 Minecraft 解释执行。解释器层把文言值桥接为游戏对象：

- **值** —— `WenyanMinecraftValues`、`WenyanSymbol`、`WenyanArgsResolver` 解析参数。
- **值对象** —— `WenyanVec3`（向量）、`WenyanEntity`、`WenyanPlayer`、`WenyanBlock`、`WenyanCapabilitySlot`、`WenyanBlockRunnerValue` 向脚本暴露世界。

## 模块交互

`throw_module` 与附加/内建模块方块（见[方块与模块](03_blocks_modules)）扩展了运行中程序的能力。

[返回首页](index)