---
title: "管道属性"
navigation:
  title: "05 管道属性"
---

# 管道属性

每条管道连接都可以携带改变滑行速度规则或允许方向的属性。手持工具看向管道段并右键即可编辑属性。

## 加速

加速属性把默认加速度替换为 `accelerationAttributeAcceleration`（`0.14` 格/tick²），而不是普通的 `0.015`。它不会改变管道的最高速度。

- `acceleration_attribute_tool` 在目标管道上切换该属性。
- `acceleration_pipe_coating` 一次性应用该属性并被消耗。

<recipe id="superpipeslide:acceleration_pipe_coating"/>

## 高速

高速属性把最高速度提高到 `highwayMaxSpeed`（`4.80` 格/tick），使用 `highwayAcceleration`（`0.08`），并以 `0.03` 平缓处理超速减速。它适合作为长距离高速干线。

- `highway_attribute_tool` 切换该属性。
- `highway_pipe_coating` 一次性应用该属性并被消耗。

<recipe id="superpipeslide:highway_pipe_coating"/>

## 线路方向限制

线路方向限制器决定管道段是否可用于路线的正向、反向或双向：

<recipe id="superpipeslide:route_direction_limiter"/>

右键管道会在「仅正向 → 仅反向 → 双向」之间循环。提示文本与悬浮消息会报告新状态。改变方向限制会把受影响的路线区段标记为过期，方便路线编辑器重新计算。

## 工具行为

两种属性工具都是可重复使用的开关：右键管道启用属性，再次右键禁用。涂层在成功使用时消耗，之后无法关闭。两种编辑都在 8 格内射线检测，拾取半径 `0.55`。

属性工具本身没有合成配方，只有消耗型涂层可以合成。

[返回首页](index)
