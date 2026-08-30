---
title: 配置与兼容
navigation:
  title: 配置与兼容
---

# 配置与兼容

## 依赖

- 在 NeoForge（26.1.2）上，Mino++ 依赖 **YACL**（Yet Another Config Lib）`3.9.3+26.1-neoforge` 提供配置界面。
- 在 Fabric 上依赖 Fabric API 与 fabric loader；通过 `versions/` 布局为两加载器构建多个 Minecraft 版本（1.20.1、1.21.1、26.1.2）。

## 东方女仆集成

在 `neoforge/compat/touhou_little_maid` 下，Mino++ 将东方女仆（Touhou Little Maid）集成进卡牌对局：`MaidPlugin` 注册女仆记忆类型，`PoiRegistry` / `SeatPoiManager` 把卡牌桌暴露为 POI，女仆任务（`FindMinoTask`、`PlayMinoTask`、`MinoppTask`）让女仆能找到桌子、入座并出牌。

## Sign Me Up 集成

`neoforge/compat/signmeup/MinimapVisibility` 在对局进行时调整卡牌桌在 Sign Me Up 小地图上的可见性。

## 兼容性说明

- `hand_cards` 渲染器使用 BEWLR（block-entity-without-level-renderer）；`hand_cards_nobewlr` 变体在不支持 BEWLR 的环境下避开该渲染器。
- 牌局状态与奖励存于服务端（`BlockEntityMinoTable`、`CardGame`）；记分与质疑判定以服务端为权威。

[返回首页](index)