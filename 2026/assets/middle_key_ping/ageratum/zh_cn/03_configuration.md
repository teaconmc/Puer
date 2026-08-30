---
title: "客户端配置"
navigation:
  title: "03 客户端配置"
---

# 客户端配置

中键标点通过配置界面注册了一个**客户端配置**。下面全部为当前源码默认值。

## 颜色

颜色按 `#RRGGBBAA` 解析（透明度可省略，默认 `FF`）。无效字符串会回退到白/灰默认值。

| 字段 | 默认值 |
|:---|:---|
| `genericColor` | `#999999FF` |
| `genericTextColor` | `#DDDDDDFF` |
| `warningColor` | `#FFFF00FF` |
| `warningTextColor` | `#0000FFFF` |
| `gotoColor` | `#00FF00FF` |
| `gotoTextColor` | `#FF00FFFF` |
| `enemyColor` | `#FF0000FF` |
| `enemyTextColor` | `#00FFFFFF` |

`genericColor` 是标记图标颜色，也用作文字背景的透明度混合；`genericTextColor` 是距离标签文字颜色。警告、前往、敌人同理。

## 距离与数量

| 字段 | 默认值 | 范围 |
|:---|:---|:---|
| `maxPingDistance` | 200 | 16 到 1024 |
| `maxPingCount` | 6 | 1 到 64 |

`maxPingDistance` 是目标射线使用的最大距离。`maxPingCount` 限制同时存在的客户端标点数量；列表满时会移除最旧标点。

## 开关

| 字段 | 默认值 | 含义 |
|:---|:---|:---|
| `allowPingEmpty` | `true` | 开启时，射线未命中或命中点超出配置距离仍可标记；关闭时，空点/超距标点会被抑制。 |
| `allowPingPicked` | `true` | 开启时，标点可以覆盖当前方块/实体选取；关闭时，准星正选取方块或实体时不会发送标点。 |

[返回 中键标点 首页](index)
