---
title: "餐厅区域与知名度"
navigation:
  title: "02 餐厅区域与知名度"
items:
  - "delicacyworld:birch_table"
  - "delicacyworld:birch_chair"
  - "delicacyworld:redwood_table"
  - "delicacyworld:redwood_chair"
  - "delicacyworld:small_potted_plant_1"
  - "delicacyworld:large_potted_plant_1"
  - "delicacyworld:electric_appliance_1"
  - "delicacyworld:instrument_1"
---

# 餐厅区域与知名度

## 检测

管理界面的 **检测** 按钮会运行 `detectArea`：它以收银机为中心扫描，缓存入口、出口和冰箱位置，并统计餐桌、椅子和装饰数量。营业开启时也会重新执行同一扫描。

扫描盒在收银机四周使用 `maxHorizontalScanRange`（默认 32 格）和 `maxVerticalScanRange`（默认 4 格）。

## 知名度公式

开店时知名度会重新计算：

- `baseRestaurantPopularity`（默认 10）
- 加上有效菜品的人气加成：基础/普通/进阶分别为 10/20/30
- 加上装饰人气
- 最后限制在当前星级上限内：1/2/3 星分别为 100/200/300。

## 装饰分值

默认值如下：标准餐桌 5，红木餐桌 10，红木椅子 5，小装饰 5，小盆栽 5，大盆栽 10，电器 20，乐器 30。灯具按电器装饰计算；铃铛、菜单牌、扫码点餐立牌和纸巾筷子按小装饰计算。每类装饰最多计入 `maxDecorCountPerType` 个方块（默认 10）。

## 星级限制

| 星级 | 桌子 | 椅子 | 食谱槽位 | 知名度上限 |
|:---|:---:|:---:|:---:|:---:|
| 1 星 | 2 | 4 | 3 | 100 |
| 2 星 | 4 | 16 | 6 | 200 |
| 3 星 | 8 | 64 | 9 | 300 |

## 受保护方块

营业期间，餐厅区域内的入口、出口、冰箱、储物柜、餐桌、椅子、烹饪设备、洗手池、托盘、出票机和黑板不能被玩家破坏。

[返回首页](index)
