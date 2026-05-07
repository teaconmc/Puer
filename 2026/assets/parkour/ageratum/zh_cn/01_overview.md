---
title: "概览与开关"
navigation:
  title: "01 概览与开关"
---

# 概览与开关

## 模组 ID 与注册表

模组 ID 为 `parkour`。当前检出的源码不注册物品、方块、实体、菜单、战利品表或合成配方。已注册内容包括：

- `parkour:parkour_state`，同步型自定义跑酷状态注册表，兜底条目为 `parkour:default`。
- `parkour:parkour_context`，参与 NBT 与网络序列化的玩家附件，聚合地面、墙面、跳跃、游泳、输入和状态数据。
- `parkour:sensor_data_manager`，仅存内存的玩家传感器数据附件。
- `parkour:slide`、`parkour:landing_roll`、`parkour:wall_jump`、`parkour:armhang`、`parkour:support_wall_jump` 和 `parkour:speed_vault` 音效事件。

## 本地开关

`client_settings.enableParkour` 默认值为 `true`。源码定义了使用 `Ctrl + P` 的 `Toggle Parkour Mode` 按键映射。按下后会翻转并保存客户端配置、更新本地状态、向服务端发送 `SyncParkourEnabledC2SPayload`，并显示跑酷模式已开启/关闭的浮层提示。本地玩家进入世界时也会发送同一数据包。

源码边界：`ClientParkourKeyBindings` 的按键注册事件当前只注册翻滚/滑铲键。`Toggle Parkour Mode` 映射对象虽然被创建并被消费，但没有传入 `RegisterKeyMappingsEvent`，因此该键可能不会出现在原版按键设置列表中。

## 按键

翻滚/滑铲键映射为 `key.parkour.roll_slide`，界面名 `Roll/Slide`，默认 `V`。这是当前实际注册的唯一自定义动作键。它驱动[地面移动](02_ground_movement)中的地面动作和[水中移动](04_swimming_movement)中的游泳推进。

## 通用移动限制

`ParkourChecks.canPerformAction` 会排除旁观者、骑乘、睡觉、激流自旋攻击、鞘翅滑翔和创造飞行。`canPerformBehavior` 还会排除非强制状态的游泳姿态。许多动作还会拒绝水、熔岩、可攀爬方块，或超过 `safeFallHeight` 的危险坠落距离。

## 状态机

自定义注册表持有以下状态：`parkour:default`、`parkour:vanilla`、`parkour:crawl`、`parkour:slide`、`parkour:backstep`、`parkour:landing_roll`、`parkour:wall_run`、`parkour:wall_slide`、`parkour:wall_climb`、`parkour:armhang` 和 `parkour:speed_vault`。客户端输入先本地预测、再由服务端确认或纠正——你的动作对所有人都一致。详见[多人游戏与须知](07_multiplayer_and_limits)。

[返回首页](index)
