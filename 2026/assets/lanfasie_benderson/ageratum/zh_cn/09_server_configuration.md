---
title: 服务端配置
navigation:
  title: 服务端配置
description: 本德森各攻击的八个服务端伤害系数、它们的默认值，以及需要重启世界的要求。
---

# 服务端配置

所有数值调整都位于**服务端**配置中。通用配置文件虽然存在，但当前**没有定义任何选项**，因此客户端没有可改的内容。

下列每个选项：

- 都是**双精度浮点数**，
- **最小值为 1.0**，实际上没有上限，
- 都需要**重启世界**才能生效。

| 选项 | 默认值 | 作用于 |
|:---|:---|:---|
| `benderson_normal_attack_damage_multiplier` | 1.0 | 普通攻击 |
| `benderson_circular_stackable_aoe_damage_multiplier` | 20.0 | 圆形可分摊（共享）范围攻击 |
| `benderson_self_circular_aoe_damage_multiplier` | 22.0 | 以自身为中心的圆形范围攻击 |
| `benderson_center_knockbacking_damage_multiplier` | 2.0 | 中央击退 |
| `benderson_partial_sweep_arena_damage_multiplier` | 22.0 | 半场横扫 |
| `benderson_pre_ecliptic_pile_damage_multiplier` | 10.0 | 黄道陨石前的石锥坠落 |
| `benderson_cat_smashing_attack_damage_multiplier` | 20.0 | 召唤的黑猫冲刺 |
| `benderson_fireball_meteor_attack_damage_multiplier` | 15.0 | 召唤的火球流星 |

## 如何理解这些默认值

这些系数**并非**全部为 1.0，这是刻意设计：可分摊 / 共享范围攻击（20）、自身范围攻击（22）与半场横扫（22）是那些除非正确应对否则足以致命的攻击，而普通攻击停留在 1.0，中央击退的 2.0 则主要用作调整站位的工具。

由于最小值是 1.0，这些数值只能调高，不能降到基础伤害以下。若想让战斗更轻松，必须改变战斗配置（竞技场大小、队伍人数、装备），而不是调低系数。

## 需要注意的字段名不一致

源码中有几个配置字段常量与写入的选项字符串并不完全一致——例如横扫对应的常量名为 `SWEEP_PARTIAL_ARENA`，而写出的选项键是 `benderson_partial_sweep_arena_damage_multiplier`。手工编辑 TOML 时**请始终以上表中的选项键为准**。

这些选项的翻译键提供在 `config.lanfasie_benderson.*` 之下。

[返回首页](index)
