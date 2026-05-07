---
title: 编译器、运行时与配方
navigation:
  title: 编译器、运行时与配方
---

# 编译器、运行时与配方

## 编译器与运行时

`judou` 模块（编译器 + 运行时，jarJar 打包进模组）解析并运行文言程序。在 Minecraft 侧，解释器（`interpreter_impl`）针对方块、实体、玩家与向量求值（见[执行器与编程](02_runners_programming)）。

## 配方问答系统

模组含配方/问答系统（`indi.wenyan.content.recipe.answering.checker.wyquestion`）：配方可以提出文言问题，检查器核验答案，让脚本/进度以正确作答为门槛。

## 村民、配置与数据生成

- **村民交易** —— `WenyanVillageTrade` 为模组物品加入村民交易。
- **配置** —— `setup.config` 中的 `WenyanConfig`。
- **数据生成** —— 语言（`WenyanLanguageProviderFactory`）、战利品表（`WenyanLootTableProvider`）与来自 `src/generated/resources` 的配方数据。

[返回首页](index)