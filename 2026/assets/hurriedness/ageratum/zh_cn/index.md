---
title: 急
navigation:
  title: 急
---

# 急（Hurriedness）

急（Hurriedness）是由 maxpixel（`cn.maxpixel.mods`）开发的 Minecraft 模组，目标环境为 Minecraft 26.1.2 与 NeoForge 26.1.2.76。当前源码检出版本为 `0.1`，采用 MIT 许可，模组 ID 为 `hurriedness`。

## 当前源码状态

本检出是一个框架骨架：所有功能接线均被注释。示例内容的字段与类存在，但模组加载时实际不会注册任何东西。

- `HurriednessMod` 声明了方块、物品与创造模式选项卡的延迟注册表。
- `EXAMPLE_BLOCK`（`hurriedness:example_block`）、`EXAMPLE_BLOCK_ITEM` 与 `EXAMPLE_ITEM`（`hurriedness:example_item`，营养值 1、饱和度修正 2 的食物）作为字段定义。
- `EXAMPLE_TAB`（`hurriedness:example_tab`）定义为置于战斗选项卡之后的创造页。
- `Config` 定义了 `logDirtBlock`、`magicNumber`、`magicNumberIntroduction` 与 `items` 列表，但配置从未以 `ModConfig` 类型注册。

由于构造器中注释掉了 `BLOCKS.register(...)`、`ITEMS.register(...)`、`CREATIVE_MODE_TABS.register(...)`、`NeoForge.EVENT_BUS.register(this)`、创意内容监听器与 `modContainer.registerConfig(...)`，这些注册均不会生效。客户端类也注释掉了其配置界面扩展点与客户端设置监听器。

## 实际运行发生什么

实际上只有构造器执行；没有任何方块、物品、选项卡、配置或事件处理程序处于活动状态。被注释的示例代码会记录一条消息，并且若 `Config.LOG_DIRT_BLOCK` 已加载，则会记录泥土方块键；这些在当前注册状态下都不会运行。

## 阅读路线

- [开发骨架](01_development_skeleton) —— 已声明但未注册的示例内容，以及其为何不生效。
