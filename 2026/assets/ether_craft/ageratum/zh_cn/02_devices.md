---
title: 设备
navigation:
  title: 设备
---

# 设备

三个核心设备使用 NeoForge 的 `ItemResource` 处理器 API，配合事务安全的 `Transaction` / `TransactionContext` 操作在槽位间搬运物品流。它们都是扩展自共享基类 `BaseEtherContainerBlockEntity` 的方块实体。

## 以太流发射器

**`ether_stream_emitter`** 沿给定方向推出物品资源流，为下游设备供料。

## 以太处理工厂

**`ether_process_factory`** 在 `EtherProcessFactoryRecipe` 下把物品输入处理为输出。四个等级为独立物品：`ether_process_factory_lv_1`、`_lv_2`、`_lv_3`、`_lv_4`（更高等级处理更大/更长的配方）。

## 以太适配节点

**`ether_adapt_node`** 在不兼容布局之间适配与路由物品流。三个等级为物品：`ether_adapt_node_lv_1`、`_lv_2`、`_lv_3`。

三者都在方块上注册 `EtherContainer` 能力与物品能力，便于其它模组集成。

[返回首页](index)