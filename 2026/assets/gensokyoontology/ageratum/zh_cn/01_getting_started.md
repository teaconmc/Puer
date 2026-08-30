---
title: "获取开始"
navigation:
  title: "01 获取开始"
---

# 获取开始

## 一切都来自创造分页

由于模组不随包配方也不随包战利品表，两个创造分页就是全部获取途径：

| 分页 | 翻译键 |
|:---|:---|
| **Gensokyo Ontology: Items** | `itemGroup.gensokyoontology_items` |
| **Gensokyo Ontology: Combat** | `itemGroup.gensokyoontology_combat` |

这个划分是功能性的而非装饰性的——战斗装备（弹幕、符卡、武器）与其余一切（方块、材料、装饰）分开。

::: warning
**破坏本模组的方块不会掉落任何东西。** 没有定义战利品表，已放置的方块无法回收。请把你放下的任何东西都当作已消耗，与 526 `link_portals` 完全相同——那个模组有同一处结构性缺口。

如果你要用这些方块建造，请在创造模式里备好余量，而不要指望能挖回来。
:::

## `/give` 可用，且物品 ID 可预测

283 个物品模型定义对应 `gensokyoontology:` 下的 ID。命名直接跟随源码——例如七种阴阳玉是 `inyo_jade_black`、`inyo_jade_red`、`inyo_jade_yellow`、`inyo_jade_green`、`inyo_jade_aqua`、`inyo_jade_blue`、`inyo_jade_purple`。

::: info
**注意拼写是 `inyo` 而不是 `yingyang`。** 两者都出现在语言文件里，而只有一个是真的——哪个是真的、以及为什么这件事有影响，见[须知](04_registries_and_technical_notes)。
:::

## 配置

存在 7 个配置项，且**没有命令**。配置里没有任何一项影响获取，因此它不提供绕过缺失配方的办法。

## 接下来看什么

有两个真正不同的部分可以探索：

**弹幕工坊。** 一个带 5×5 网格与轨迹编辑器的专用台子，让你构建弹幕图案。这是模组真正的合成系统，且完全在原版配方框架之外——见[弹幕与符卡](02_danmaku_and_spellcards)。

**渲染层。** 四套着色器程序，背后有六个 GLSL 噪声库，负责绘制这些效果，其中包括一套 `master_spark`。见[表达式与着色器](03_expressions_and_shaders)。

## 内容有多少

| 种类 | 大致 |
|:---|---:|
| 方块 | **约 90** |
| 物品 | **约 280** |
| 弹丸与符卡实体 | 10 |

::: tip
这个量在创造分页里逐个翻会很费时。**分成 Items 与 Combat 两个分页就是你的主要筛子**——搞装饰就待在 Items，要战斗则所需的一切都在 Combat。
:::

[返回首页](index)
