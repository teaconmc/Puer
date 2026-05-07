---
title: 配置与限制
navigation:
  title: 07 配置与限制
---

# 配置与限制

## 通用配置

| 配置键 | 默认值 | 允许范围或作用 |
|:---|:---|:---|
| `launchHeight` | 96 | 升空高度，10–256 格 |
| `launchSpeed` | 1.5 | 升空及初始滑翔速度，0.1–10.0 |
| `waitTicks` | 200 | 等待时间，20–1200 tick |
| `maxPassengers` | 2 | 额外玩家数，0–100 |
| `kidnapRange` | 8.0 | 绑架搜索半径，1.0–32.0 格 |
| `ascentSpeed` | 0.15 | 等待悬停时的上升速度，0.01–2.0 |
| `stuckThreshold` | 40 | 受阻后转滑翔的 tick 数，5–200 |
| `hoverLift` | 2.0 | 等待高度，0.5–10.0 格 |
| `targetMaxRange` | 128.0 | 锁定最大距离，16.0–512.0 格 |
| `targetLockTicks` | 30 | 完成锁定所需时间，1–100 tick |
| `foodCost` | 6 | 发起者饱食度消耗，1–20 |
| `maxKidnapEntities` | 6 | 非玩家目标混合计数上限，0–100 |
| `allowKidnapPlayers` | true | 是否允许绑架其他玩家 |

## 客户端配置

| 配置键 | 默认值 | 作用 |
|:---|:---|:---|
| `renderTargeting` | true | 显示滑翔锁定界面 |
| `renderAdvancedTargeting` | true | 显示光柱、环、名称等高级效果 |
| `waypointRenderDistance` | 96 | 世界路径点投影距离，16–4096 格 |

按键可以在控制设置中重新绑定。普通俯冲默认为 `V`，绑架俯冲默认为 `Shift` + `V`。

## 当前边界

- 模组没有方块、自定义实体、命令或配方。
- `waitTicks` 的注释写着 100 tick 等于 10 秒，但代码默认实际是 200 tick。
- 绑架数量的实现会把玩家和生物混在同一个计数中。
- 内置黑名单为空，首领不会自动排除。
- 多组起点过近时，右键加入可能选中另一组最近的会话。
- 按键分类使用的资源键与语言文件键名可能不匹配，控制设置中分类名可能回退为未翻译文本。

[返回天际俯冲首页](index)
