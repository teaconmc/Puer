---
title: "更好的打雪仗 3：重制版"
navigation:
  title: "更好的打雪仗 3：重制版"
---

# 更好的打雪仗 3：重制版

更好的打雪仗 3：重制版（`bsf3lite`）把原版雪球变成了一整套武器平台：17 种雪球、大炮与步枪、机枪与霰弹枪、为它们供弹的储存罐、接雪球的手套、斥力场，以及可搭建、能为你作战的进阶雪傀儡。

这是 **lite（精简）** 构建。它的 ID 字面上就是 `bsf3lite`，而自带语言文件仍保留着大量本构建**并未注册**的内容名称 —— 在相信任何别处看到的物品清单之前，请先读[范围、本地化与网络](08_scope_localization_and_networking)。

## 阅读路线

1. [快速上手](01_getting_started)：注册了什么、创造分类，以及你的第一颗雪球。
2. [雪球](02_snowballs)：17 种可投掷类型各自的作用。
3. [弹药与武器](03_ammo_and_weapons)：夹钳、储存罐、切换弹药的按键，以及全部发射器。
4. [装备与食物](04_gear_and_food)：手套、斥力场、靴子、喷气引擎、核心与消耗品。
5. [进阶雪傀儡](05_snow_golems)：召唤、装备、行为模式、治疗与假人。
6. [方块、效果与附魔](06_blocks_effects_enchantments)：四个方块、两种效果与三种附魔。
7. [进度与配置](07_advancements_and_configuration)：13 个进度与两份配置文件。
8. [范围、本地化与网络](08_scope_localization_and_networking)：语言文件承诺但本构建没有的内容，以及数据包说明。

## 快速说明

| 项目 | 当前实现 |
|:---|:---|
| 模组 ID / 命名空间 | `bsf3lite` |
| 显示名称 | Better Snowball Fight 3 Reforged |
| 模组版本 | `1.0.0` |
| 许可证 | `GNU GPLv3` |
| 加载器 | 仅 NeoForge —— 没有 Fabric 源码集 |
| Minecraft | `26.1.2`，接受范围 **`[26.1.2]`**（单一精确版本） |
| NeoForge | 针对 `26.1.2.75` 构建 |
| 物品 | 注册 61 个 |
| 方块 | 注册 4 个，方块实体 1 个 |
| 实体类型 | 21 个（3 个生物、1 个场执行器、17 个雪球） |
| 状态效果 | 2 个（`cold_resistance`、`weapon_jam`） |
| 附魔 | 3 个，以数据包 JSON 定义 |
| 创造分类 | `bsf3lite:bsf_tab`，图标 `bsf3lite:explosive_snowball` |
| 配方 | 62 个 JSON —— 53 有序、6 无序、3 锻造转化 |
| 进度 | 13 个 JSON，根为 `bsf3lite:root` |
| 音效事件 | 107 个 —— 20 个功能性外加 `memesound00`–`memesound86` |
| 配置 | 一份 SERVER（7 项）与一份 CLIENT（1 项） |
| 命令 | 无 |
| 按键绑定 | 2 个，分类 `bsf3lite:main` |

::: warning
`minecraft_version_range` 是 `[26.1.2]`，不是一个区间。本构建声明只兼容这一个 Minecraft 版本，在任何其他 `26.x` 上都会拒绝加载。
:::
