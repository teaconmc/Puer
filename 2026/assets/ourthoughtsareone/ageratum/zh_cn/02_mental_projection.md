---
title: 意念投影
navigation:
  title: 意念投影
---

# 意念投影

## 投影核心

**`projection_core`**（`ProjectionCoreItem`）是创建共享意念投影的物品，也是 `ourthoughtsareone` 创造页的图标。

## 锚点

- **`projection_anchor`** —— 不可见（0×0）的 `MobCategory.MISC` 实体（客户端追踪范围 64、更新间隔 1），在世界中承载投影。
- `ProjectionManager` 管理投影状态，`ProjectionAnchorEntity` 携带它。想法/目标与群体共享，让所有人都「看见同一个念头」。

## 配置与事件

`OTAOConfig` 调整模组行为；`OTAOEventHandler` 在两侧接通投影事件。

[返回首页](index)