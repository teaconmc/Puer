---
title: "日历方块"
navigation:
  title: "03 日历方块"
---

# 日历方块

`eclipticseasons:calendar` 是一个带方块实体的挂墙方块，显示当前节气与日期，并可在多种显示模式间切换。

## 合成

<recipe id="eclipticseasons:calendar"/>

- 2 纸
- 1 书
- 1 羽毛（任意 `#c:feathers`）
- → 1 日历

## 显示模式

把日历放在墙上，然后不潜行使用即可让它读取所在位置的群系。潜行并使用可切换 `display_mode` 状态：

- `normal` —— 默认日历页。
- `year` —— 年份视图。
- `next` —— 后续节气视图。
- `day` —— 天数。
- `sub_season` —— 当前季段（一个季节内的 6 节气阶段）。
- `month` —— 公历月份视图。

方块实体会渲染所选模式与来自世界的当前季节数据。日历物品同时作为模组创造模式标签页的图标。

::: note
页面上显示的具体文字来自翻译键，例如 `item.eclipticseasons.calendar.pop_hint`（`%1$s, %2$s/%3$s`）。模型本身由客户端渲染；切换模式只改变方块状态与方块实体。
:::

[返回首页](index)
