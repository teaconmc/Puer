---
title: 飞行链接
navigation:
  title: 飞行链接
---

# 飞行链接

## 飞行核心

**`flight_core`**（`FlyingCoreItem`）是开启**飞行链接**的物品。用它邀请另一名玩家与你合而为一地飞行（「我们意念合一」——当你在空中移动时，被链接的伙伴会跟随）。

## 链接

- **`flight_link`** —— 不可见（0×0）的 `MobCategory.MISC` 实体（客户端追踪范围 96、更新间隔 1），代表被链接玩家之间的连接。
- `FlightManager` 运行链接逻辑；`FlightLinkRenderer` 为客户端绘制链接，`OTAOClientEvents` 驱动客户端行为。
- 邀请经网络传输：`AcceptFlightInvitePayload` 与 `OTAONetwork`（`AcceptFlightInvite` 流程）在玩家间传递加入/接受请求。

## 备注

飞行同步行为经 `LivingEntityMixin` / `PlayerMixin` 应用。可用性与效果可在 `OTAOConfig` 中调整。

[返回首页](index)