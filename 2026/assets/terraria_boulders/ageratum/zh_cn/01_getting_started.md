---
title: 获取开始
navigation:
  title: 获取开始
---

# 获取开始

所有巨石方块与工具都位于模组创造标签中。主要方块是 `terraria_boulders:boulder` 及其变体；每个方块也有对应的 `BlockItem`，可在世界中放置。

## 手套、伪装与巨型

- **`terraria_boulders:boulder_glove`**（堆叠上限 1）是搬运与投掷巨石的工具。
- **`terraria_boulders:camouflaged_boulder`** 放置一个巨石，可用 `is_locked` 数据组件锁定/解锁——锁定的伪装巨石在交互前看起来像普通方块。
- **`terraria_boulders:giant_boulder`** 是尺寸可动态调整的大型巨石；其渲染尺寸会重置为实际实体尺寸。
- **`terraria_boulders:boulder_bread`** 既是方块也是食物（一大块、吃得很慢的零食）。

## 巨石基础

巨石方块在受到扰动时会生成滚动的巨石实体。生成哪种实体与方块类型绑定（例如 `bouncy_boulder` 生成 `BouncyBoulderEntity`）。它们在滚动/弹跳路径上造成接触伤害，多个变体还会产生区域效果（爆炸、岩浆、彩虹）。

[返回首页](index)