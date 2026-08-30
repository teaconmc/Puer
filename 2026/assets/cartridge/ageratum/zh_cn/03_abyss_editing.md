---
title: 深渊编辑
navigation:
  title: 深渊编辑
---

# 深渊编辑

深渊系统在八叉树（`OctreeNode`、`ChunkAbyssData`）中编辑深层地形，由 `AbyssManager` 追踪，并通过 `AbyssInitPacket` / `AbyssUpdatePacket` 同步。

## 工具

六级的创造与移除工具可雕琢深渊体量：

- **创造** —— `abyss_create_1`、`abyss_create_2`、`abyss_create_3`、`abyss_create_4`、`abyss_create_5`、`abyss_create_6`
- **移除** —— `abyss_remove_1`、`abyss_remove_2`、`abyss_remove_3`、`abyss_remove_4`、`abyss_remove_5`、`abyss_remove_6`

每个都是 `AbyssEditToolItem`，带有 `Operation`（创造为 ADD、移除为 REMOVE）与按等级缩放编辑半径。服务端 `AbyssPlayerHandler` / `AbyssRendererServer` 与客户端 `AbyssRenderer` 投影效果。

[返回首页](index)