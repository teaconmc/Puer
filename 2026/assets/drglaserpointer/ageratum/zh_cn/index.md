---
title: 深岩银河激光指示器
navigation:
  title: 深岩银河激光指示器
items:
  - drglaserpointer:laser_pointer
---

# 深岩银河激光指示器

**深岩银河激光指示器**（命名空间 `drglaserpointer`，v1.2.0，GNU GPLv3，作者 linngdu664 与 zx1316）把《深岩银河》的激光指示器带进 NeoForge / Minecraft 26.1.2。它只注册**一件物品**——激光指示器，外加一个标记实体，除此之外没有方块、没有命令、没有世界生成。

手持指示器瞄准并右键：被瞄准的方块、生物或掉落物上会出现一个带颜色的**激光标记**，附近所有玩家的 HUD 上都会出现一块标签，显示标记者、目标名称与距离。标记金块或蘑菇时还会播放矮人语音。

## 阅读路线

- [01 开始使用](01_getting_started.md) —— 合成配方、物品出现在哪里、取出指示器时会发生什么。
- [02 标记目标](02_marking.md) —— 标记方块、生物与掉落物、标记实体与 HUD 标签。
- [03 颜色与指示器屏幕](03_colors_and_screen.md) —— 四种激光颜色与四种屏幕颜色。
- [04 快速切换到手上](04_quick_switch.md) —— 从背包里把指示器抽到手上的 `Z` 键。
- [05 声音与成就](05_sounds_and_advancements.md) —— 六个声音事件、两个方块标签与三个成就。
- [06 配置](06_configuration.md) —— 通用配置与客户端配置文件。
- [07 网络与限制](07_networking_and_limits.md) —— 数据包、多人行为与当前已知的粗糙之处。

## 一览

| 关注点 | 详情 |
|:---|:---|
| 模组 ID / 名称 | `drglaserpointer` / DRG Laser Pointer，v1.2.0，GNU GPLv3 |
| 作者 | linngdu664、zx1316 |
| 版本目标 | Minecraft 26.1.2 / NeoForge `[26.1.2.75,)` |
| 物品 | `drglaserpointer:laser_pointer`（最大堆叠 1） |
| 实体 | `drglaserpointer:laser_pointer_mark`（`MISC`，`0.0625 x 0.0625`，免疫火焰） |
| 数据组件 | `drglaserpointer:laser_color`、`drglaserpointer:screen_color`（均为 byte，默认 `0`） |
| 声音事件 | `laser_on`、`laser_off`、`laser_make`、`mushroom1`、`mushroom2`、`were_rich` |
| 方块标签 | `drglaserpointer:rich_blocks`、`drglaserpointer:mushrooms` |
| 进度触发器 | `drglaserpointer:mark_block_trigger` |
| 成就 | `drglaserpointer:root`、`drglaserpointer:were_rich`、`drglaserpointer:mushroom` |
| 按键 | `key.laserpointer.switch_to_laser_pointer`，默认 `Z`，分类 `drglaserpointer:laserpointer` |
| 创造分页 | 加入原版**工具与实用物品** |
| 配方 | `drglaserpointer:laser_pointer`（有序合成） |
| 命令 | 无 |

指示器没有耐久、没有燃料、没有冷却，它纯粹是一件沟通工具。本指南的全部内容均来自模组当前的注册表、数据文件与语言文件。
