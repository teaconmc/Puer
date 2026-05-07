---
title: "结构生成器"
navigation:
  title: "06 结构生成器"
items:
  - "yuushya:oak_tree"
  - "yuushya:maple_tree"
  - "yuushya:sakura_tree"
  - "yuushya:normal_truck"
  - "yuushya:villa_0"
  - "yuushya:octagon_pavilion"
  - "yuushya:grand_piano"
  - "yuushya:mori_cat_pet_store"
  - "yuushya:tavern"
---

# 结构生成器

## 已注册结构

`structure.json` 注册了用于放置 NBT 结构的 Structure Creator 物品：

- 树木：`oak_tree`、`maple_tree`、`sakura_tree`、开花橡树变体（`white_blooming_oak_tree`、`yellow_blooming_oak_tree`、`pink_blooming_oak_tree`），以及 `tiny`、`mini`、`small`、`middle`、`medium`、`straight`、`winding`、`lush` 等尺寸/姿态变体。
- 载具：`normal_truck`、`dining_truck`。
- 建筑：`villa_0`、`composite_building`、`octagon_pavilion`、`fancy_sakura_0` 至 `fancy_sakura_3`。
- 室内与店铺：`grand_piano`、`kitchen_template`、`mori_cat_pet_store`、`mori_grocery_store`、`tavern`。

## 工具模式

Structure Creator 物品把模式保存在 `yuushya:mode` 数据组件中。副手右键循环四种模式：

- **0 普通放置**：右键方块，在它旁边放置结构。
- **1 删除**：对空气右键，清除上次放置结构所占区域。
- **2 镜像**：循环镜像设置。
- **3 旋转**：循环旋转设置。

位置、尺寸、镜像与旋转保存在 `yuushya:structure` 数据组件中，因此物品能跨使用保留选择。

::: note
这些物品引用的 NBT 文件（例如 `yuushya:oak_tree`）由 `gen-26.1` 构建任务从 `1.16.5/common/src/main/resources/data/yuushya/structures/` 暂存到 26.1 的生成资源。当前检出没有提交生成目录，因此运行时结构必须存在，放置才会成功。
:::

[返回首页](index)
