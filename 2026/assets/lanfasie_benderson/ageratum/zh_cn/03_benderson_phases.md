---
title: 本德森的相位
navigation:
  title: 本德森的相位
description: 驱动首领的相位状态机、全部十二个相位状态，以及转移是如何被选择的。
---

# 本德森的相位

本德森由一个**相位状态转移器**驱动：这是一个小型状态机，其中每个相位都是一个可以开始、tick、结束，并能报告自己当前是否可用的对象。

## 转移如何工作

- 每 tick 都会 tick 当前相位。当其 tick 返回「已结束」时，该相位结束，状态机被标记为需要更换相位。
- 候选目标会被筛选，只保留其相位报告**可用**的那些。
- 在候选中，只有**优先级最高**的能留下，其余全部被丢弃。
- 若仍剩下多个，则用一个 fork 出的随机源按**权重**抽取其一。
- 非当前的相位每 tick 仍会收到一次「非活动 tick」。
- 当前相位会以 `Phase` 键持久化进存档数据，每个相位则把自身数据写入 `PhaseData`。

除下文另有说明外，默认优先级为 `1`，默认权重为 `1`。

## 已注册的相位状态

| 相位键 | 作用 |
|:---|:---|
| `idle` | 回退 / 休息相位。 |
| `arena_entering` | 召唤时使用的入场相位。 |
| `attack` | 普通攻击相位，同时是主要枢纽。 |
| `lethal_attack` | 有预兆的高额伤害攻击。 |
| `circle_aoe_self` | 以本德森自身为中心的圆形范围攻击。 |
| `circle_stack` | 圆形**可分摊**（共享伤害）攻击。 |
| `three-fourth_arena_aoe` | 半场横扫。 |
| `summon_anticalabrum` | 召唤背约王者之剑。 |
| `elevate_to_extreme` | 升阶至究极状态。 |
| `knockback_from_center` | 将玩家从中心击退。 |
| `summon_blocking_pile` | 召唤阻挡石锥（陨石前置）。 |
| `ecliptic_meteor` | 黄道陨石终结技。 |

## 转移图

| 从 | 到 | 优先级 |
|:---|:---|:---|
| `idle` | `idle` | 0 |
| `idle` | `summon_anticalabrum` | 1 |
| `idle` | `attack` | 1 |
| `arena_entering` | `attack` | 0 |
| `arena_entering` | `idle` | −1 |
| `attack` | `idle` | −1 |
| `attack` | `attack` | 0 |
| `attack` | `summon_anticalabrum` | **10** |
| `attack` | `lethal_attack` | 1 |
| `attack` | `circle_aoe_self` | 1 |
| `attack` | `circle_stack` | 1 |
| `attack` | `three-fourth_arena_aoe` | 1 |
| `attack` | `knockback_from_center` | 1 |
| `lethal_attack` | `idle` | 0 |
| `lethal_attack` | `attack` | 1 |
| `circle_aoe_self` | `idle` | 0 |
| `circle_aoe_self` | `attack` | 1 |
| `circle_stack` | `idle` | 0 |
| `circle_stack` | `attack` | 1 |
| `three-fourth_arena_aoe` | `idle` | 0 |
| `three-fourth_arena_aoe` | `attack` | 1 |
| `summon_anticalabrum` | `idle` | 0 |
| `summon_anticalabrum` | `attack` | 1 |
| `elevate_to_extreme` | `idle` | 1 |
| `knockback_from_center` | `summon_blocking_pile` | **10** |
| `knockback_from_center` | `idle` | −1 |
| `summon_blocking_pile` | `ecliptic_meteor` | **10** |
| `summon_blocking_pile` | `idle` | −1 |
| `ecliptic_meteor` | `attack` | 1 |
| `ecliptic_meteor` | `idle` | 0 |

如何读这些优先级：从 `attack` 出发，只要 `summon_anticalabrum` 可用，它就以优先级 10 完胜其他所有选项。`knockback_from_center` → `summon_blocking_pile` → `ecliptic_meteor` 这条链同样被优先级 10 强制，因此一旦击退命中，陨石流程就会紧随其后——除非这些相位拒绝运行，此时状态机会以优先级 −1 掉回 `idle`。

## 预兆

多个攻击会由带字幕的音效预告：

- `subtitles.lanfasie_benderson.lethal_attack` —— 「预兆：致命攻击」
- `subtitles.lanfasie_benderson.stack_attack` —— 「预兆：可分摊攻击」
- `subtitles.lanfasie_benderson.enemy_sweep` —— 「横扫攻击」

延迟攻击还会通过 `delayed_attack_marker`（延迟攻击标记）与 `target_marker`（目标标记）实体在世界中显示。

上述各攻击的伤害缩放均可配置——参见[服务端配置](09_server_configuration.md)。

[返回首页](index)
