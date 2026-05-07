---
title: 我的肉鸽
navigation:
  title: 我的肉鸽
---

# 我的肉鸽（Beyond）

（Beyond，模组 ID `beyond`，版本 1.0.1）是一个面向 Minecraft 的肉鸽（roguelike）进度框架。主类将其描述为在 Minecraft 中呈现肉鸽玩法的关卡系统：世界被组织为安全区、活动区与节点遭遇，阶段、遭遇与进度定义由数据包驱动。它在 `org.galaxy.beyond` 下开发，目标环境为 Minecraft 26.1.2 与 NeoForge 26.1.2.59-beta。

## 核心概念

- **安全区与活动区** —— Beyond 将肉鸽维度划分为安全区和不断扩张的活动区；边界可在客户端渲染（`ZoneBorderRenderer` 系列）。
- **节点** —— 方块 `node_block` 在世界中标示遭遇节点；节点完成后会扩张活动区。
- **遭遇** —— 遭遇是 `NodeColor`（GREEN / ORANGE / RED）与 `SceneType`（HARVEST / REPOSE / CLIMAX）组成的 9 种组合之一，例如 `Green_Event`、`Red_BossShop`。
- **阶段** —— `Phase` 是纯标识符载体；行为已迁移到 `RogueCap`，由 `PhaseRunner` 驱动。
- **数据驱动** —— `ProgressDataPack` 文件与 `DefinitionManager` 通过数据包提供进度与肉鸽定义。

## 注册内容

- **物品** —— `beyond:loot_bag`、`beyond:world_seed`、`beyond:test_item`。
- **方块** —— `beyond:node_block`（金属音效，不遮挡）。
- **创造页** —— `beyond:beyond_tab`（键 `itemGroup.beyond`，图标为 `loot_bag`），收录 `node_block`、`loot_bag` 与 `world_seed`。
- **命令** —— `/beyond` 命令，含 `teleport`（home / activeBoundary / node）、`safezone <chunkSize>`、`unlockNode`、`config currentProgress` 与 `playerPhase get/set` 子命令。

## 阅读路线

- [获取开始](01_getting_started) —— 配置肉鸽维度、物品与命令。
