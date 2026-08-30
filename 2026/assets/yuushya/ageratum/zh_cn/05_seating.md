---
title: "坐下"
navigation:
  title: "05 坐下"
items:
  - "yuushya:classroom_chair"
  - "yuushya:gaming_chair"
  - "yuushya:monobloc"
  - "yuushya:chair"
  - "yuushya:office_chair"
  - "yuushya:bar_stool"
  - "yuushya:bench"
  - "yuushya:park_bench"
  - "yuushya:couch"
  - "yuushya:bicycle"
---

# 坐下

## 坐上去

注册条目中定义了三个值 `sit_pos` 交互字段的方块即为座位。右键会按方块朝向旋转后的位置生成一个隐形的 `yuushya:ride_entity` 椅子实体，并把玩家骑乘上去。

已确认的座位方块包括 `classroom_chair`、`gaming_chair`、`monobloc`，以及 `chair`、`office_chair`、`bar_stool`、`seat`、`park_stool`、`cushion_armchair`、`bench`、`park_bench`、`park_bench_no_handrail`、`couch`、`bicycle` 等模板。

## 椅子实体行为

- `yuushya:ride_entity` 不可被伤害。
- 服务端在没有乘客时移除它。
- 位置失效时也会自动移除（下方方块为空气，或乘客姿势既不是站立也不是潜行）。
- 已占用的座位会拒绝另一位玩家坐下。

[返回首页](index)
