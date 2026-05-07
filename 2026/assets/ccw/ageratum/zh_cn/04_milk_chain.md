---
title: "牛奶生产线"
navigation:
  title: "04 牛奶生产线"
items:
  - "ccw:milk_extractor"
  - "ccw:milk_packaging"
  - "ccw:carton_milk"
  - "ccw:milk_gelatin"
---

# 牛奶生产线

## 取奶器

`ccw:milk_extractor` 是可重复使用的工具，耐久 129。右键牛取出 1 个盒装牛奶；潜行右键可一次取出最多 16 个，上限受剩余耐久限制。每取出一个盒装牛奶，取奶器都会掉 1 点耐久，并施加 `2 × 数量` tick 的冷却，因此大批量取奶后玩家会暂时无法交互。

<recipe id="ccw:milk_extractor"/>

除特殊维修配方外，取奶器没有其他恢复耐久的配方。维修配方把取奶器与 `ccw:milk_packaging` 或纸组合：

<recipe id="ccw:repair_extractor"/>

## 预制纸板与盒装牛奶

`ccw:milk_packaging`（预制纸板）由纸折叠而成，用于制作盒装牛奶。1 个牛奶桶加 1 个预制纸板产出 8 个盒装牛奶；3 个牛奶桶加 1 个预制纸板产出 24 个。

<recipe id="ccw:milk_packaging"/>

<recipe id="ccw:milk_carton_from_single_milk_bucket"/>

<recipe id="ccw:carton_milk"/>

`ccw:carton_milk` 是饮品：饮用耗时 16 tick，会随机移除你身上的 1 个已激活状态效果。盒装牛奶与高钙牛奶都算作糖果公式所需的牛奶，并包含在 `c:foods/milk` 与 `c:drinks/milk` 标签中。

## 牛奶凝胶

`ccw:milk_gelatin` 是奶香香型的特殊材料，由盒装牛奶与黏液球、或牛奶桶与 8 个黏液球制成。

<recipe id="ccw:milk_gelatin"/>

<recipe id="ccw:milk_gelatin_from_milk_bucket"/>

关于牛奶凝胶如何改变软糖食用行为，见[软糖与公式](02_gummies_and_formulas)。

[返回 CCW 首页](index)
