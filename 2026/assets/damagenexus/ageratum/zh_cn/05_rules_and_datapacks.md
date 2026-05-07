---
title: 规则与数据包
navigation:
  title: 规则与数据包
description: 24 个条件、14 个操作、规则提供器、角色与叠加方式。
---

# 规则与数据包

**规则**是自定义战斗行为的基本单元：一组条件加一组操作，绑定到某个阶段、某个角色与某种叠加方式。规则通过 codec 序列化，因此既可来自数据包，也可来自物品或 Java API。

## 规则从哪里来

启动时按此顺序注册三个提供器：

1. **物品提供器** —— 由本次命中涉及的物品堆携带的规则。
2. **弹射物提供器** —— 由弹射物或其来源物品携带的规则。
3. **数据包提供器** —— 从数据包文件加载，并在资源重载时刷新。

第三方模组可通过公开的注册方法添加提供器。请注意：公开路径仅在**同一实例**已存在时才拒绝，而内置路径按**类**去重——因此从外部注册同一提供器类的两个不同实例，两者都会被加入。

## 角色

| 角色 | 含义 |
|:---|:---|
| `offensive` | 拥有者作为攻击方时运行 |
| `defensive` | 拥有者作为受击方时运行 |
| `any` | 两个方向都运行 |

声明为 `any` 的规则会匹配运行时正在评估的任一角色。

## 叠加方式

当多个来源提供同一条规则时，叠加方式决定结果：

| 方式 | 行为 |
|:---|:---|
| `stack` | 所有实例相加 |
| `highest_value` | 只有最大者生效 |
| `lowest_value` | 只有最小者生效 |
| `replace` | 后来的实例替换先前的 |
| `unique_source` | 每个来源只计一个实例 |

规则还可声明叠加组，使多条不同名的规则作为一体竞争。

## 条件

随包 24 个条件，可用 `all_of`、`any_of`、`not` 组合。

**恒真：** `always`

**组合子：** `all_of`、`any_of`、`not`

**命中状态：** `is_critical`、`damage_channel_is`、`damage_type_is`、`damage_type_tag`、`damage_source_tag`

**目标：** `target_on_fire`、`target_health_below`、`target_health_above`、`target_has_effect`、`target_entity_type_is`、`target_entity_type_tag`、`target_is_boss`、`target_mob_category_is`

**攻击者：** `attacker_health_below`、`attacker_health_above`、`attacker_has_effect`、`attacker_entity_type_is`、`attacker_entity_type_tag`、`attacker_is_boss`、`attacker_mob_category_is`

生命值类条件以**百分比**表达；两个 `*_is_boss` 条件读取 `damagenexus:bosses` 实体类型标签——而该标签随包只含末影龙与凋灵。

## 操作

随包 14 个操作。

**增加固定伤害：** `add_base_damage`、`add_true_damage`

**减伤前乘算：** `add_channel_pre_multiplier`、`add_global_pre_multiplier`

**减伤后乘算：** `add_channel_post_multiplier`、`add_global_post_multiplier`

**削减：** `add_channel_mitigation`、`add_global_mitigation`、`add_temporary_resistance`、`multiply_armor_effectiveness`

**重塑：** `convert_damage`、`gain_extra_damage`

**终止：** `override_final_damage`、`cancel_damage`

有两对很容易混淆：

- **`convert_damage` 与 `gain_extra_damage`。** 转换是把伤害从一个通道移到另一个通道——总量不增加。获得额外则是在新通道中**追加**一份等比伤害，同时保留原伤害，因此总量增加。
- **`add_temporary_resistance` 与 `add_channel_mitigation`。** 临时抗性增加的是抗性**评级**，随后要走抗性曲线；通道减伤则直接增加减免量。同样的名义数字会得出不同结果。

`add_true_damage` 写入 `DN_TRUE_DAMAGE` 桶，绕过减伤与两个通用乘算层——见 [03 管线与阶段](03_pipeline_and_phases.md)。

## 严格错误处理

两个开发者开关控制规则或处理器格式错误时的行为：

- `strictRuleErrors` —— 默认 `false`
- `strictProcessorErrors` —— 默认 `false`

两者都关闭时，错误规则会被容忍并上报，而不会中止。编写数据包时请打开它们，好让错误立刻暴露，而不是悄无声息地什么都不做。

## 重载行为

数据包规则通过资源重载监听器加载，因此 `/reload` 即可拾取改动而无需重启。相比之下，配置在加载与配置文件重载时烘焙；而命令可用性在命令注册时一次性决定，**不会**跟随数据包的 `/reload`。

[返回首页](index)
