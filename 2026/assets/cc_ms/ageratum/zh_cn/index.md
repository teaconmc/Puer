---
title: 撅电报
navigation:
  title: 撅电报
items:
  - cc_ms:portable_radio
---

# 撅电报（MorSneak）

「撅电报」是 c20c01 的 TeaCon 2026 参赛作品，模组 ID `cc_ms`，组 ID `io.github.c20c01.cc_ms`，版本 `0.1.0`，采用 **GPL-3.0** 许可，面向 Minecraft 26.1.2。

它是一个建立在单一构想之上的红石与通信模组：**磁石的位置就是无线电频率**。把电台调到某块磁石上，你就加入了由该维度与方块坐标标识的频道。发射器把红石强度推上频道，接收器再把它还原成红石，而便携电台让玩家收听并回应——用撅屁股（潜行）的方式。

模组的中文名「撅电报」是个双关：你靠 **撅**（潜行）来发报。

## 注册了什么

| 注册表 | 条目 |
|:---|:---|
| 方块 | `cc_ms:radio_receiver_block`、`cc_ms:radio_transmitter_block` |
| 方块实体 | 每个方块各一个 |
| 物品 | 两个方块物品，加 `cc_ms:portable_radio` |
| 创造分页 | `cc_ms:tab` |
| 声音事件 | `cc_ms:beep`、`cc_ms:fa` |
| 数据组件 | `selected_frequency`、`frequencies`、`signal_code`、`sound_code` |
| 配方 | 3 个有序合成 |
| 战利品表 | 2 个（每方块一个） |
| 配置 | 一个 `SERVER` 选项 |
| 命令 / 实体 / Mixin | **无** |

没有命令、没有实体、没有 Mixin、也没有访问转换器。一切都由两个方块、一个物品和一块磁石完成。

## 阅读路线

1. [01 入门](01_getting_started) —— 配方链、它真实的下界合金成本，以及你的第一条可用链路。
2. [02 频道](02_channels) —— 磁石如何成为频率，以及频道为何只输出一个信号。
3. [03 便携电台](03_portable_radio) —— 界面的四种模式、16 频道上限，以及靠潜行发报。
4. [04 无线电方块](04_radio_blocks) —— 发射器与接收器接线、方块状态与加入频道。
5. [05 声音与方向](05_sounds_and_direction) —— 电报声音、信号代码，以及 8 格方向偏移。
6. [06 配置](06_configuration) —— `buzz_sounds` 服务器选项及其语法。

## 一览

| 关注点 | 详情 |
|:---|:---|
| 模组 ID / 名称 | `cc_ms` / MorSneak，v0.1.0，GPL-3.0 |
| 作者 / 组 ID | c20c01 / `io.github.c20c01.cc_ms` |
| 版本目标 | Minecraft 26.1.2 |
| 频率 | 磁石的 `GlobalPos`（维度 + 位置） |
| 每个便携电台的频道数 | 16 |
| 红石范围 | 0 – 15，与常规一致 |
| 方向提示 | 最多 8 格，仅水平 |
| 可配置声音 | 最多 64 个，随包 16 个 |
| 本地化 | 英文与中文各 23 键，完全对等 |
