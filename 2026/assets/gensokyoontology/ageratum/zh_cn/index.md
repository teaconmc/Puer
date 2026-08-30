---
title: "幻想存有论"
navigation:
  title: "幻想存有论"
---

# 幻想存有论

**幻想存有论**（模组 ID `gensokyoontology`）是一个东方主题内容模组，围绕**弹幕**构建：你自己拼装的弹幕、可发射的符卡，以及一套专门绘制它们的自定义着色器。

它在结构上有一处很不寻常，而这一点决定了其余一切：**它完全不随包任何数据包内容。** 没有配方、没有战利品表、没有进度文件、没有标签。

## 阅读路线

- [01 获取开始](01_getting_started) —— 「无数据包」在实际游玩中意味着什么，以及两个创造分页。
- [02 弹幕与符卡](02_danmaku_and_spellcards) —— 弹幕台、轨迹编辑器，以及具名符卡。
- [03 表达式与着色器](03_expressions_and_shaders) —— 内嵌的表达式注册表与四套着色器程序。
- [04 须知](04_registries_and_technical_notes) —— 不掉落、无配方，以及七件需要中文才能正常显示的物品。

## 一览

| 关注点 | 详情 |
|:---|:---|
| 模组 ID | `gensokyoontology` |
| 许可 | **All Rights Reserved**（且**无 `LICENSE` 文件**） |
| Minecraft | `[26.1.2]` —— 单一精确版本 |
| **依赖** | 除 `neoforge` + `minecraft` 外**无** |
| **数据包内容** | **无 —— 不存在 `data/` 资源目录** |
| 方块 | **约 90** |
| 物品 | **约 280** |
| **着色器文件** | **14 个**（4 套程序 + 6 个 GLSL 包含库） |
| 自定义注册表 | **`gensokyoontology:expression`** |
| 配置项 | 7 |
| 命令 | **无** |
| 语言 | `en_us` / `zh_cn` / `ja_jp` —— **各 593 键** |

## 首先要知道的一件事

::: danger
**这个模组不提供任何合成配方、方块掉落与进度。**

因此它约 90 个方块与约 280 个物品全都来自创造分页或 `/give`，而且**你放下的方块挖不回来**。

**这不是打包错误** —— 模组自己的合成机制根本不使用原版配方系统。见[弹幕与符卡](02_danmaku_and_spellcards)。
:::

## 内容实际是什么

Blockstate 的名字读起来像一趟幻想乡巡礼：`gap`（境界操作）、`dakimakura`（抱枕）、`chireiden_colored_glass`（地灵殿彩色玻璃）、`fractal_log` 与 `fractal_leaves`（分形木）、`dragon_sphere_ore`（龙珠矿）、`blue_rose_bush`、`coaster_rail`、`disposable_spawner`，以及一整套 `ginkgo_*` 银杏木材。

实体清单以弹丸为主 —— `danmaku_entity`、`large_shot`、`small_shot`、`heart_shot`、`star_shot_small`、`star_shot_large`、`rice_shot`、`scale_shot` —— 以及带有标准括号标题的**符卡**，例如 `Spell Card「Wave And Particle」`、`Spell Card「Ido no Kaiho」`、`Spell Card「Hell Eclipse」` 与 `「Mountain Of Faith」`。

它甚至有专属死亡消息：**`death.attack.danmaku` —— 「Player is killed by danmaku」**。
