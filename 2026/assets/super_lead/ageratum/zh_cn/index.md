---
title: "超级绳 / Super Lead"
navigation:
  title: "超级绳"
---

# 超级绳

万物皆可绳（Super Lead）把原版拴绳变成万能连接工具。一根绳子就能在相隔较远的方块之间传递红石信号、能量、物品、流体甚至气体。绳子带真实的客户端物理、会下垂和摆动，可以沿途悬挂装饰物，还能当作滑索骑行。

## 阅读顺序

1. [开始使用](01_getting_started)：合成超级绳、放置与升级绳索、悬挂物品与乘坐滑索。

## 快速一览

| 项目 | 当前实现 |
|:---|:---|
| 模组 ID | `super_lead` |
| 目标环境 | Minecraft 26.1.2 / NeoForge 26.1.2.76-beta |
| 创造栏 | 原版「工具与实用物品」（`tools_and_utilities`） |
| 注册物品 | `super_lead:super_lead`、`super_lead:basic_cargo_manifest`、`super_lead:advanced_cargo_manifest`、`super_lead:preset_binder`、`super_lead:attachment_tuner` |
| 注册方块 | 无（不含自定义方块） |
| 数据组件 | `super_lead:cargo_manifest_items`、`super_lead:preset_binder` |
| 每维度存档 | `super_lead:lead_connections` |
| 绳类 | `normal`、`redstone`、`energy`、`item`、`fluid`、`pressurized`、`thermal`、`ae_network` |
| 客户端按键 | `key.super_lead.open_config`（默认未绑定，杂项分类） |
| 配置 | 通用配置（`super_lead-common.toml`） |

### 绳类

| 绳类 | 转换材料 | 升级材料 | 用途 |
|:---|:---|:---|:---|
| 普通 | — | — | 装饰/被动绳 |
| 红石 | 红石块 | — | 双向红石信号 |
| 能量 | 铁块 | 红石块（tier） | FE 传输 |
| 物品 | 漏斗 | 箱子 | 带路由的物品运输 |
| 流体 | 炼药锅 | 桶 | 容器间流体传输 |
| 压力 | 钢块（Mekanism） | 强化合金 | 化学/气体传输 |
| 热量 | 铜块（Mekanism） | 强化合金 | 热量传输 |
| ME 电缆 | 福鲁伊克斯块（AE2） | 16³ 空间组件 | AE2 频道桥接 |

::: note
除 `normal`、`redstone`、`energy`、`item`、`fluid` 之外的绳类依赖可选模组：`pressurized` 与 `thermal` 需要 Mekanism，`ae_network` 需要 Applied Energistics 2。
:::
