---
title: "品质与知名度"
navigation:
  title: "06 品质与知名度"
items:
  - "delicacyworld:wall_air_conditioner"
  - "delicacyworld:ceiling_air_conditioner"
  - "delicacyworld:standing_air_conditioner"
  - "delicacyworld:ceiling_fan"
  - "delicacyworld:ceiling_fan_wood"
---

# 品质与知名度

## 熟食元数据

熟食物品堆会在自定义数据中保存 `RestaurantCraftQuality`、`RestaurantCraftPrice`、`RestaurantCraftPopularityBonus`、`RestaurantCraftBusinessFresh` 和 `RestaurantCraftApplianceSupport`。提示文本会显示品质、售价和人气加成；熟食可以摆放到餐桌、备餐台或冰箱顶部。

## 品质阶位

三个阶位为基础（10 人气）、普通（20）和进阶（30）。最终品质在烹饪完成时结算：

- 营业烹饪且输出为新鲜时提升一级（`qualityBusinessFreshBoost`，默认 true）。
- `qualitySupportHorizontalRange`（默认 6 格）和 `qualitySupportVerticalRange`（默认 3 格）内开启的支持电器，会对新鲜营业输出再提升一级（`qualityApplianceFreshBoost`，默认 true）。
- 非营业烹饪会降级（`qualityNonBusinessPenalty`，默认 true）。
- 非新鲜的堆叠输出会降级（`qualityStackedOutputPenalty`，默认 true）。
- 非新鲜输出有电器支持时可回升一级（`qualityApplianceOffsetsStackPenalty`，默认 true）。

每个品质等级会按 `qualityPriceStepPercent`（默认 25%）改变售价并调整人气加成，最低售价为 1。

## 支持电器

壁挂、吊顶和立式空调以及两种吊扇都实现 `ToggleableBlock`，开启后可作为品质支持。使用遥控器对它们切换开关。立式空调只有底部方块激活时才计入支持。

## 营业中的知名度变化

- 订单失败：-10（`failedOrderPopularityPenalty`）。
- 拖走顾客：-10（`mopPopularityPenalty`）。
- 垃圾生成：存在期间 -5（`garbagePopularityPenalty`）。
- 用拖把清理垃圾：恢复该惩罚。
- 完美营业（无失败订单）：+20（`perfectBusinessPopularityBonus`），受星级上限限制。
- 结算时每块残留垃圾 -5。

营业结算界面会报告基础/普通/进阶品质的上菜数、营业新鲜上菜数和电器支持上菜数。

[返回首页](index)
