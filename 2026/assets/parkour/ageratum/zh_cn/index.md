---
title: "简单跑酷"
navigation:
  title: "简单跑酷"
---

# 简单跑酷

简单跑酷（Parkour）是一款面向 NeoForge 26.1.2 / Minecraft 26.1.2 的移动机制模组。它不注册物品、方块、实体、菜单或合成配方，而是改变玩家的移动方式：翻滚/滑铲键会在爬行、滑铲和后撤步之间切换；墙跑、墙滑、爬墙、蹬墙跳、垂挂和速过扩展纵向移动；水中移动加入浅水游泳、推进、跳跃和自由泳；方块标签则让数据包控制可攀爬与传感器判定。

## 阅读路线

1. [概览与开关](01_overview)：模组 ID、本地开关、按键绑定和通用移动限制。
2. [地面移动](02_ground_movement)：滑铲、爬行、后撤步、落地翻滚和地面修正。
3. [墙面移动](03_wall_movement)：墙跑、墙滑、爬墙、蹬墙跳、垂挂和速过。
4. [水中移动](04_swimming_movement)：浅水游泳、推进、跳跃、自由泳和闲置停止。
5. [可攀爬方块标签](05_climbable_tags)：三个生成方块标签及其用途。
6. [配置](06_configuration)：客户端与服务端配置键和已确认默认值。
7. [多人游戏与须知](07_multiplayer_and_limits)：动作由服务端核验、开关不是防护，以及一个会关闭速度限制的配置。
8. [命令](08_commands)：仅客户端生效的 `/parkour debug` 命令树。

## 快速说明

| 主题 | 当前实现 |
|:---|:---|
| 模组 ID | `parkour` |
| 版本 | `1.0.3+mc26.1.2` |
| 已注册内容 | 无；没有物品、方块、实体、菜单或配方 |
| 自定义注册表 | `parkour:parkour_state`（同步，默认 `parkour:default`） |
| 玩家附件 | `parkour:parkour_context`、`parkour:sensor_data_manager` |
| 音效事件 | `parkour:slide`、`parkour:landing_roll`、`parkour:wall_jump`、`parkour:armhang`、`parkour:support_wall_jump`、`parkour:speed_vault` |
| 方块标签 | `#parkour:climbable`、`#parkour:common_ignored_blocks`、`#parkour:scaffolding_blocks` |
| 主要输入 | 翻滚/滑铲键，默认 `V` |
| 命令 | 仅客户端 `/parkour debug ...`；无服务端命令根 |
| 配置 | NeoForge 服务端配置，另有客户端 `enableParkour` 偏好 |
