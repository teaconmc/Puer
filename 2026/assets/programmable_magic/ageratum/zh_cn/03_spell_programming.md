---
title: 咒语编程
navigation:
  title: 咒语编程
---

# 咒语编程

咒语是数据驱动物品，以 `spell_display_*` 注册（`SpellRegistry`），每个都是 `BaseSpellItem`，在创造标签中按子类别分组。可用家族：

- **数字与常量** —— `NumberDigit0..9`、`Pi`、X/Y/Z 单位向量、`True`/`False`。
- **数字运算** —— 加、减、乘、除、余数、幂；`Sin`/`Cos`/`Tan`/`Asin`/`Acos`/`Atan`；`Ceil`/`Floor`；`RandomNumber`；向量长度/X/Y/Z；实体护甲/生命/最大生命。
- **动态常量** —— `Timestamp`、`CameraDirection`、`CasterPosition`、`SpellPosition`、`CasterEntity`、`SpellEntity`、`NearestEntity`。
- **其它计算** —— 方块位置、括号、逗号、`SetStore`/`GetStore` 存储、构建向量、实体位置/速度。
- **逻辑与流程** —— `>`/`<`/`=`/`>=`/`<=`/`!=`，与/或/非，方块为空气/方块有重力；循环（`ForLoop`）、`Continue`/`Break`、`IfStart`/`IfEnd`、`Stop`、`Restart`。
- **触发器** —— 条件取反、`TouchGround`、`TouchEntity`、`Delay`。
- **基础咒语** —— `DebugPrint`、`Teleport`、`Velocity`、`ApplyPotion`、`SendToInventory`、`BreakBlock`、`MineBlock`、`PlaceBlock`、`Explosion`。

咒语按子类别着色并排序（`SPELL_COLORS`）；咒语物品经 `SpellItemModelProvider` 获得专属模型。

[返回首页](index)