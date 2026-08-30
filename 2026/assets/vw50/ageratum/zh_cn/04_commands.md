---
title: "命令"
navigation:
  title: "命令"
---

# 命令

所有命令都在 `/vw50` 根命令之下。

## 发送

### `/vw50 hand <playerCount> [label]`

把主手物品堆叠作为红包发送，供至多 `<playerCount>` 名玩家领取。`playerCount` 取 `1..256`。可选的 `label` 会成为红包标题（留空时默认为「恭喜发财」）。非创造模式发送者会损失打包的主手物品。

## 历史

### `/vw50 history`

显示最近（按创建时间）至多 8 个红包的 id、标题、状态与已领数量。

## 权限（需要游戏管理员权限）

为单个玩家配置发送冷却或封禁列表。这些设置保存在服务端存档中，应用到所有低于游戏管理员等级的玩家。

- `/vw50 permission cooldown <player> <seconds>` — 设置该玩家的发送冷却（`0..3600` 秒）。
- `/vw50 permission block <player>` — 封禁该玩家发送任何红包（把冷却设为 `0` 并带上封禁标记）。
- `/vw50 permission unblock <player>` — 移除封禁。

## 复读限制（需要游戏管理员权限）

节流重复的聊天消息（用于对付口令刷屏）。

- `/vw50 repeatLimit <maxPerMinute> [minIntervalMs]`
  - `maxPerMinute` `0..120` — 每分钟最多允许的相同重复消息次数（`0` 关闭）。
  - `minIntervalMs` `0..60000` — 两条相同消息之间的最小间隔。

[返回首页](index)
