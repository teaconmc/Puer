---
title: 动量
navigation:
  title: 动量
items:
  - momentum:jet_booster
---

# 动量（Momentum）

「动量」是 AkiraHane 的 TeaCon 2026 参赛作品，组 ID 为 `com.akirahane.momentum`，面向 Minecraft 26.1.2 与 NeoForge 26.1.2.64-beta。当前检出的源码版本为 `1.2`，采用 **All Rights Reserved** 许可，模组 ID 为 `momentum`。其声明的描述是「More flexible movement methods」（更灵活的移动方式）。

本模组用一套逐玩家的状态机替换原版移动：每个客户端刻都按优先级评估一组移动状态，并进入优先级最高的匹配项。滑铲、匍匐、墙跑、挂墙、翻越、空中闪避、受身与水中推进全都是这台状态机的状态，而一个开关就能随时让你回到未经修改的原版移动。

## 实际注册了什么

注册表足迹刻意很小——本模组主要提供行为，而非内容：

| 注册表 | 条目 |
|:---|:---|
| 物品 | 恰好一个：`momentum:jet_booster` |
| 方块 / 实体 / 方块实体 | **无** |
| 创造分页 | **没有自建分页**；助推器被插入原版战斗分页 |
| 配方 | 一个：`momentum:jet_booster` |
| 声音事件 | `momentum:jet1`、`momentum:jet2`、`momentum:jet3` |
| 数据附件 | `momentum:momentum_enabled`、`momentum:movement_state` |
| 网络数据包 | 三个，注册版本 `1` |
| 按键映射 | 三个，位于 `momentum:category` 分类 |
| 命令 | **无** |

## 阅读路线

1. [01 入门](01_getting_started.md) —— 合成喷气助推器、装备它，并开启机动模式。
2. [02 喷气助推器](02_jet_booster.md) —— 唯一的物品：属性、修饰符、检测方式，以及它解锁的一切。
3. [03 地面移动](03_ground_movement.md) —— 行走、匍匐、滑铲与蓄力跳。
4. [04 墙面移动](04_wall_movement.md) —— 攀墙、滑墙、墙跑、挂墙、蹬墙跳与两种翻越。
5. [05 空中与水中](05_air_and_water.md) —— 滞空、受身、闪避、游泳与水中推进。
6. [06 操作与 HUD](06_controls_and_hud.md) —— 按键绑定、按键提示层、相机偏移与动画。
7. [07 配置](07_configuration.md) —— 服务端与客户端文件，以及支配每个动作的双重门控规则。
8. [08 多人游戏与须知](08_multiplayer_and_limits.md) —— 必须安装的那个库、什么会保留，以及那些粗糙之处。

## 需要最先记住的一条规则

十七个动作开关**各存在两份**——一份在服务端配置、一份在客户端配置——而动作只有在**两份都启用时**才会运行。看起来失效的功能，多半是在你没检查的那一侧被关掉了。详见 [07 配置](07_configuration.md)。

## 一览

| 关注点 | 详情 |
|:---|:---|
| 模组 ID / 名称 | `momentum` / Momentum，v1.2，All Rights Reserved |
| 作者 / 组 ID | AkiraHane / `com.akirahane.momentum` |
| 版本目标 | Minecraft 26.1.2 / NeoForge `[26.1.2.64-beta,)` |
| 移动状态 | 共 18 个，含原版回退状态 |
| 唯一物品 | `momentum:jet_booster` |
| 按键绑定 | `C`、`Shift`+`M`、`Shift`+`N` |
| 配置文件 | 服务端 + 客户端，动作开关重复定义 |
| 可选集成 | Curios（腰带槽位） |
| 命令 | 无 |
