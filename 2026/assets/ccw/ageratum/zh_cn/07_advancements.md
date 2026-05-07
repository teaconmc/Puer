---
title: "成就与统计"
navigation:
  title: "07 成就与统计"
---

# 成就与统计

## 进度树

卡里普索的糖果工坊在 `ccw` 下注册了 13 个进度：

| ID | 解锁目标 |
|:---|:---|
| `ccw:root` | 获得糖果工坊 |
| `ccw:eco_friendly_material` | 进入纸/牛奶材料链的第一步 |
| `ccw:cows_choice` | 用取奶器从牛身上获得盒装牛奶 |
| `ccw:excessive_extraction` | 取奶里程碑 |
| `ccw:my_first_candy` | 精炼出第一颗软糖 |
| `ccw:advanced_candy_maker` | 精炼出非原味香型的软糖 |
| `ccw:nether_crazy_flavor` | 获得地狱糖粉 |
| `ccw:candy_finale` | 获得龙息糖粉 |
| `ccw:rainbow_collector` | 生涯中每种糖种至少收集一次 |
| `ccw:diabetes` | 食用大量软糖 |
| `ccw:drawer_tables` | 获得抽屉台桌 |
| `ccw:more_buautiful_drawer` | 获得粉红桌布版抽屉台桌 |
| `ccw:the_real_candy_workshop` | 把糖果工坊放在抽屉台桌上 |

`rainbow_collector` 的需求用 `ccw:sugar_stat` 玩家附件记录，死亡时该附件会复制到新物品栏。注意当前源码中粉红桌布进度 ID 的真实拼写是 `more_buautiful_drawer`；这是现有兼容事实，文档不“纠正”它。

## 自定义统计

模组注册了两个自定义统计：

| 统计 | 触发方式 |
|:---|:---|
| `ccw:interact_with_sugar_refinery` | 右键糖果工坊 |
| `ccw:open_drawer_table` | 打开抽屉台桌菜单 |

## 自定义触发器

代码中存在三个自定义进度触发器：`ccw:refine_flavored_sugar`（精炼非原味香型软糖）、`ccw:collect_all_sugar`（收集全部糖种）与 `ccw:develop_diabetes`（大量食用软糖）。它们由上述进度条目使用。

[返回 CCW 首页](index)
