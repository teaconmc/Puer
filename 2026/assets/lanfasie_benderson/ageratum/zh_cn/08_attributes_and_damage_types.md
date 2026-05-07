---
title: 属性与伤害类型
navigation:
  title: 属性与伤害类型
description: 三个自定义属性、四个带死亡消息的伤害类型，以及三个实体标签。
---

# 属性与伤害类型

## 自定义属性

| 属性 | 类型 | 默认值 | 范围 |
|:---|:---|:---|:---|
| `enmity_multiplier` | 区间 | 1.0 | 0.1 – 100 |
| `damage_gate_percentage` | 百分比 | 0.01 | 0.001 – 0.99 |
| `extreme` | 布尔 | false | — |

- **仇恨倍率**驱动仇恨模型——参见[仇恨与挑衅](04_enmity_and_provoking.md)。
- **伤害闸百分比**（「伤害闸百分比」）以分数形式限制单次可承受的比例；其边界意味着该闸门永远不可能为 0% 或 100%。
- **究极模式**（「究极模式」）是与 `elevate_to_extreme` 相位相对应的布尔属性。

请注意源码中的翻译键并不完全一致：究极属性注册时使用的键是 `attributes.lanfasie_benderson.is_extreme`，而语言文件提供的是 `attributes.lanfasie_benderson.extreme`。同样地，伤害闸使用的键是 `attributes.lanfasie_benderson.damage_gate`。

## 伤害类型

共注册四个伤害类型：

| 伤害类型 | 消息 id | 缩放 | 疲劳值 |
|:---|:---|:---|:---|
| `lethal_attack` | `lethal_attack` | NEVER | 0.2 |
| `ecliptic_meteor` | `ecliptic_meteor` | NEVER | 0.0 |
| `boss_normal_attack` | `mob` | WHEN_CAUSED_BY_LIVING_NON_PLAYER | 0.0 |
| `boss_ability_attack` | `boss_ability_attack` | WHEN_CAUSED_BY_LIVING_NON_PLAYER | 0.05 |

`boss_normal_attack` 刻意复用原版 `mob` 消息 id，因此其死亡信息读起来与普通生物击杀一致。另外三个拥有自定义死亡消息，例如：

- 致命攻击 —— 「%1$s 未能扛住 %2$s 的高额伤害」
- 黄道陨石 —— 「%1$s 在 %2$s 点了杯黄道陨石拿铁，并给了默认好评」
- 首领技能 —— 「%1$s 在躲避 %2$s 的攻击时只差一步就能踏入安全区」

每个都有 `.item` 与 `.player` 变体。

## 实体标签

| 标签 | 名称 |
|:---|:---|
| `immune_benderson_wipe_arena` | 免疫本德森清扫场地攻击 |
| `ignore_unforgiven_indiscretion_broadcast` | 无视来自不获宽恕的失言的广播 |
| `sin_bearer` | 负罪灵 |

## 战利品与数据生成

模组附带用于方块战利品、自定义战利品表、方块标签、伤害类型标签、实体类型标签、语言、模型与音效定义的数据提供器，还有一个由额外生命值驱动的缩放数值提供器，用于战利品 / 伤害缩放。**不存在配方提供器**，这与模组没有任何配方的事实一致。

[返回首页](index)
