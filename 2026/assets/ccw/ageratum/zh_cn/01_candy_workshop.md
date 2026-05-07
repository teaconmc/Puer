---
title: "糖果工坊与抽屉台桌"
navigation:
  title: "01 糖果工坊"
items:
  - "ccw:sugar_refinery"
  - "ccw:plain_drawer_table"
  - "ccw:drawer_table"
---

# 糖果工坊与抽屉台桌

## 糖果工坊方块

`ccw:sugar_refinery` 是核心机器。右键打开 8 槽界面：

| 槽位 | 用途 |
|:---|:---|
| 0 | 牛奶：1 个牛奶桶，或 8 个盒装/高钙牛奶 |
| 1 | 糖粉：原版糖、`ccw:nether_sugar` 或 `ccw:ender_sugar` |
| 2 | 主料 |
| 3 | 附加/香型材料 |
| 4 | 产物 |
| 5–7 | 余料槽 |

机器每 160 tick（8 秒）完成一轮。它先按糖与主料匹配数据驱动的 `ccw:formula` 注册表，失败后再回退到 `ccw:refining` 配方（例如 `ccw:carametal`）。只有产物槽能容纳相同物品与数据组件且不超过堆叠上限时，配方才会被选中，否则精炼暂停。

批次完成后消耗输入并把结果放进产物槽。余料和溢出会先尝试放进正下方的 `ccw:drawer_table`，再放进槽 5–7，最后掉落为地面物品。

<recipe id="ccw:sugar_refinery"/>

右键机器还会增加 `ccw:interact_with_sugar_refinery` 统计。机器对所有方向暴露物品容器能力，漏斗和自动化可以送入或取出物品。

## 抽屉台桌

抽屉台桌有两种：普通 `ccw:plain_drawer_table` 和粉红桌布版 `ccw:drawer_table`。两者都打开同一个 54 槽抽屉菜单，输出红石比较器信号，并暴露物品容器能力。代码刻意允许把 `ccw:sugar_refinery` 直接放在上面，因此抽屉台桌很适合作为成品软糖与余料的缓冲。

<recipe id="ccw:plain_drawer_table"/>

<recipe id="ccw:drawer_table"/>

打开任意一种抽屉台桌会增加 `ccw:open_drawer_table` 统计。

[返回 CCW 首页](index)
