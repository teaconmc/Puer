---
title: "命令"
navigation:
  title: "08 命令"
---

# 命令

所有命令都在根命令 `/restaurantcraft` 下，需要管理员权限（`Permissions.COMMANDS_GAMEMASTER`）。每条命令都会在执行者水平 32 格、垂直 8 格范围内搜索收银机。

## 信息与关闭

- `/restaurantcraft info` — 显示附近餐厅的名称、星级、知名度、金钱和营业状态。
- `/restaurantcraft close` — 强制关闭附近餐厅的营业会话。

## 调整

- `/restaurantcraft addpopularity <amount>` — 增加餐厅知名度（下限为 0）。
- `/restaurantcraft addmoney <amount>` — 增加餐厅存储的金钱。

## 重置与调试

- `/restaurantcraft reset` — 重置星级、知名度、金钱、营业计数器和存储库存。
- `/restaurantcraft debug area` — 重新检测区域，并报告缓存的扫描最小/最大盒以及入口和出口位置。

只有找不到餐厅时命令会明确失败；数值命令即使附近没有收银机也会返回成功。

[返回首页](index)
