---
title: "机械网络"
navigation:
  title: "02 机械网络"
items:
  - "industrybase:oak_transmission_rod"
  - "industrybase:spruce_transmission_rod"
  - "industrybase:birch_transmission_rod"
  - "industrybase:jungle_transmission_rod"
  - "industrybase:acacia_transmission_rod"
  - "industrybase:dark_oak_transmission_rod"
  - "industrybase:mangrove_transmission_rod"
  - "industrybase:cherry_transmission_rod"
  - "industrybase:crimson_transmission_rod"
  - "industrybase:warped_transmission_rod"
  - "industrybase:stone_transmission_rod"
  - "industrybase:iron_transmission_rod"
  - "industrybase:gold_transmission_rod"
  - "industrybase:diamond_transmission_rod"
  - "industrybase:axis_connector"
---

# 机械网络

## 传动杆连接

传动杆的轴向采用放置时点击面的轴。它只从这条轴的两端暴露机械接口；侧面相邻的杆不会连接。所有传动杆都可以含水放置。

搭建直线轴时，连续点击朝向相同轴的表面。需要转弯、分叉或把不同轴向汇合时，使用轴连接器：它从六个方向都返回同一个机械接口。

<block id="industrybase:axis_connector"/>

轴连接器没有齿轮比或方向转换损耗；它只是让六面属于同一机械连通网络。

## 功率、阻力与速度

机械网络把所有机器提供的功率相加，也把机器阻力相加。当前核心计算为：

`网络速度 = 总功率 / 总阻力`

因此增加动力源会提高速度，增加负载会降低速度。传动杆和轴连接器负责连通，本身没有设置机器阻力；普通发电机和电动机各向机械网络登记 `2` 点阻力。

## 杆件耐受设计

传动杆类包含一段“网络总阻力 / 网络方块数”检查：当网络速度大于零且平均阻力严格高于杆件阈值时，设计行为是让该杆自行破坏并掉落。

| 杆件材料 | 阈值 |
|:---|---:|
| 所有木质杆 | `5` |
| 石杆 | `10` |
| 铁杆 | `20` |
| 嵌金杆 | `50` |
| 嵌钻杆 | `100` |

阈值不是整张网络允许的总阻力，而是上述平均值。不过当前类虽然启用了随机 tick，却把检查写在 scheduled `tick` 方法中，并且仓库内没有为传动杆安排 tick。自动断杆在此快照中可能不会正常触发，不能作为可靠的过载保护。

## 设计建议

- 先用短轴确认动力源和负载朝向，再延长线路。
- 负载较多时仍可按表中阈值升级关键路径，但应同时监控速度，不要依赖自动断杆报警。
- 需要多方向连接时使用轴连接器，不要期待传动杆侧面自动啮合。
- 转速下降通常表示总阻力上升，并不一定是动力源停止。

[返回工业基石目录](index)
