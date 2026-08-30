---
title: "管道外观"
navigation:
  title: "10 管道外观"
---

# 管道外观

管道外观只改变渲染出来的管道段样式，不改变滑行机制。外观按维度保存在存档数据中，并同步给客户端。

## 外观工具

合成管道外观工具：

<recipe id="superpipeslide:pipe_appearance_tool"/>

- 右键空白处打开外观编辑器，并把草稿保存到工具上。
- 右键管道段，把配置好的草稿刷到该段。
- 对管道段潜行右键，把它当前的外观复制为新草稿。
- 没有草稿时右键管道段，会为该段打开编辑器。

编辑在 8 格内射线检测，拾取半径 `0.58`。

## 结构与变体

编辑器把结构样式与材质涂层分开：

- **Round Pipe（圆管）**：经典圆形管道；Basic 或 Ribbed 变体。
- **Box Pipe（方管）**：稳定的方形截面；Basic、Split 或 Ribbed。
- **Triangular Beam（三角梁）**：倒三角轨道；Basic 或 Keel。
- **Rail Track（铁轨）**：带可选枕木的双轨；Basic 或 Heavy。
- **Slide Channel（滑道）**：开放式 U 形滑槽；Basic、Rim、Curved 或 Curved Rim。
- **Faceted Pipe（多面管道）**：八角形 Minecraft 风格管道；Basic、Edge 或 Ribbed。
- **Monorail Beam（单轨梁）**：带顶部轨道的紧凑梁；Basic 或 Heavy。
- **Covered Tube（罩式管道）**：带透明顶篷的基础轨道；Half、Framed 或 Ringed。

## 结构参数

每种结构都有自己的参数，包括：

- `radius`、`width`、`height`、`depth`、`top_flatness`
- `gauge`、`rail_width`、`rail_height`、`tie_interval`、`tie_width`
- `rim_width`、`wall_slope`、`floor_ratio`、`edge_width`

预览会用青色参考线标出玩家滑行位置，并为选中段显示加速、高速、单向与站台叠加标记。

## 材质槽与涂层

材质槽随结构与变体变化，包括 Body、Ribs、Top/Bottom、Sides、Top Plate、Keel、Rails、Ties、Bed、Floor、Walls、Rims、Edges、Beam、Track、Base、Canopy 与 Frame。点击任意槽位会打开涂层选择器：

- 使用背包中的方块作为纹理来源。
- 从推荐材质类别中选择：Minimal、Base、Warm Wood、Industrial、Minerals、Glass、Energy、Nature、Nether 与 End。
- 选择自定义颜色，或开启整体发光开关。
- 标准、模组与复杂纹理都会附带风险提示，说明纹理可能无法正确显示在模型上。

## 染色与应用

工具预设可以保存，然后应用到单个段，或应用到整条连续管道。编辑器也会标记目标段当前是否带有加速、高速、方向或站台数据。

[返回首页](index)
