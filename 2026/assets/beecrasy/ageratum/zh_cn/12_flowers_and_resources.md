---
title: "花卉与资源"
navigation:
  title: "12 花卉与资源"
items:
  - "beecrasy:comb_foundation"
  - "beecrasy:empty_comb_block"
  - "beecrasy:honey_comb_block"
  - "beecrasy:asphodel"
  - "beecrasy:protea"
---

# 花卉与资源

蜂会注册了蜡、蜂蜜滴、蜂王浆、巢础、空巢脾块和蜜巢脾块等生产资源。巢础用于合成木蜂箱，不是蜂箱工作时持续消耗的材料；块状巢脾便于储存，并可参与压榨回收。

<recipe id="beecrasy:crafting/comb_foundation"/>

<recipe id="beecrasy:crafting/empty_comb_block"/>

<recipe id="beecrasy:crafting/honey_comb_block"/>

## 花卉组

模组提供阿福花、翠雀的三种颜色、狐尾百合的两种颜色、蜀葵的三种颜色以及帝王花的两个变种，共 `11` 种花。多数花能通过标准合成配方转化为对应染料，也能作为蜂群附近的花源与装饰。

工作的蜂箱会在花朵半径内尝试把草、蕨等候选方块转化为基础蜂会花卉，默认每轮尝试倍率为 `1`。这个随机池包含 `9` 种基础花，不包含炽焰狐尾百合和工艺帝王花。花卉转化仍以已经取得蜜蜂并启动蜂箱为前提，不能修复最初的蜜蜂入口；若整合包希望玩家收集完整 `11` 种花，还需为两个特殊变种安排额外来源。

::: tip
花朵半径默认是 `4`，它控制草/蕨转化而不是蜂箱开工判定。看不到新花时，应确认蜂箱正在工作且范围内有合格候选方块；补放现成花不会解除 `INVALID_ENVIRONMENT`。
:::

[返回蜂会目录](index)
