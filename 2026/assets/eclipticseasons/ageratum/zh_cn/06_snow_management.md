---
title: "雪景管理"
navigation:
  title: "06 雪景管理"
---

# 雪景管理

季节雪系统可以让方块呈现覆雪外观而不替换其方块 ID。本页介绍三件工具与两个药锅。

## 扫帚

`eclipticseasons:broom` 有 256 耐久，使用刷扫动画。清扫方块时：

- 移除目标方块的覆雪状态（`SnowyMapChecker.removeSnowyStatus`）。
- 如果上方是雪层方块，也会一并破坏该雪层。
- 每次移除消耗 1 点耐久，创造模式除外。

<recipe id="eclipticseasons:broom"/>

- 1 干草块 + 1 木棍（`#c:rods/wooden`）→ 1 扫帚

::: note
除非启用 `SnowInWorld` 配置，扫帚会从创造标签页隐藏，工具提示也会显示该功能未启用。
:::

## 冰晶法杖

`eclipticseasons:ice_wand` 是面向创造的雪状态工具（史诗稀有度、堆叠 1、无合成配方）。左键循环模式；对方块使用即应用所选模式。

- 模式：`block` 尺寸 `1x1`、`3x3`、`5x5`，以及 `chunk` 尺寸 `1x1`、`3x3`、`5x5`、`7x7`。
- 潜行点击在 `SnowyRemover.SnowyFlag` 值之间循环雪标记。
- 工具写入 `range` 自定义数据组件与 `mode` 整数，然后应用到点击的区块位置或局部区域。

## 盐石法杖

`eclipticseasons:salt_wand`（稀有稀有度、4096 耐久）把矩形区域标记为无雪区。先使用一次选择第一个角，再使用一次选择对角。潜行应用时改为移除选择。区域中每个方块在非创造模式消耗 1 耐久。

<recipe id="eclipticseasons:salt_wand"/>

- 石英宝石、金锭、木棍 → 1 盐石法杖

## 雪锅与冰锅

`eclipticseasons:snow_cauldron` 与 `eclipticseasons:ice_cauldron` 是注册的锅类方块，装的是雪或冰而不是水。空锅可通过注册的锅交互放入雪块与冰；装满的锅保留自己的方块状态，可用来紧凑存放或展示季节方块。

[返回首页](index)
