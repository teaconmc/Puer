---
title: 巨石类型
navigation:
  title: 巨石类型
---

# 巨石类型

每种巨石都有方块与对应的实体，会在撞击时滚动与反应。

## 基础巨石

- **`boulder`** —— 经典滚动巨石（`BoulderEntity`）。
- **`oak_log_boulder`** —— 全碰撞的原木巨石（`FullCollisionBoulderBlock`）。
- **`snow_boulder`** —— 雪球式巨石，滚动时会增大。

## 危险巨石

- **`lava_boulder`** —— 滚动时留下岩浆痕迹。
- **`explode_boulder`** —— 撞击时爆炸（泰拉风格 `TerraStyleExplosion`）。
- **`rolling_cactus_boulder`** —— 滚动仙人掌，对玩家造成 19 点、对生物造成 1.5 点仙人掌伤害；还会发射 `rolling_cactus_spike` 弹射物。
- **`spider_boulder`** —— 蜘蛛主题巨石。

## 特殊巨石

- **`bouncy_boulder`** —— 撞击表面时弹跳而非停下。
- **`ghoulder`** —— 幽灵巨石，可穿过某些方块。
- **`rainbow_boulder`** —— 滚动时循环变色。
- **`follower_boulder`** —— 追踪目标，而非只沿坡滚下。
- **`camouflaged_boulder`** —— 看起来像普通方块；用 `is_locked` 数据组件锁定/解锁。
- **`giant_boulder`** —— 尺寸动态调整的超大巨石（占用多格阵列渲染，`GiantBoulderBlockEntity`）。
- **`boulder_bread`** —— 巨石外形的大块零食方块。

[返回首页](index)