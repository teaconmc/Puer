---
title: 获取开始
navigation:
  title: 获取开始
---

# 获取开始

`minecartrevolution:wrench`（堆叠上限 1）是你的主要工具。所有模组矿车都出现在专属的 **MinecartRevolution** 创造标签（`minecartrevolution:item_group`，位于战斗栏目之前，图标为原版矿车），并与原版矿车/熔炉矿车/漏斗矿车/箱子矿车/TNT 矿车并列。

## 转变系统

`MinecartTransformManager` 与 `@MinecartMapper` 注解驱动方块/物品 → 矿车的转变流水线。`MinecartTransformConfig` 让你配置启用哪些转变及其行为。专门的 `ForceCompatRegisterPacket` 让客户端选择加入「强制兼容」模式，由服务端的 `FORCE_COMAPTERS` 列表追踪。

## 发射器行为

每个已注册矿车都注册了一个发射器行为，因此你可以把 `minecart_<方块>` 物品从发射器发射到铁轨上，而不仅限于手动放置。

## 矿车的来源

每种矿车都有一个对应物品 `minecart_<基准名>`（例如 `minecart_barrel`、`minecart_beacon`、`minecart_water`）以及一个 `EntityType`；多数会把一个代表性方块作为其展示方块。它们全部置于 MinecartRevolution 创造标签中。

[返回首页](index)