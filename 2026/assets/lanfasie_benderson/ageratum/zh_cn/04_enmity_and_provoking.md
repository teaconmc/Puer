---
title: 仇恨与挑衅
navigation:
  title: 仇恨与挑衅
description: 仇恨倍率属性、挑衅效果、挑衅棒，以及首领血条上的引战读数。
---

# 仇恨与挑衅

这场战斗在原版索敌之上使用了一套**仇恨（aggro）模型**，它同时以属性和效果两种形式暴露出来。

## 仇恨倍率属性

`lanfasie_benderson:enmity_multiplier` 是一个区间属性（翻译键 `attributes.lanfasie_benderson.enmity_multiplier`，「仇恨倍率」），其：

- 默认值 **1.0**
- 最小值 **0.1**
- 最大值 **100**

倍率越高，你的行为产生的仇恨越多。

## 挑衅（Aggro Up）

`lanfasie_benderson:aggro_up` 是一个**有益**效果（「挑衅」）。它会向仇恨倍率属性施加一个修饰符：

- 修饰符 id 为 `lanfasie_benderson:effect.aggro_up`
- 数值 **+10**，操作为 **ADD_VALUE**

因此受影响的玩家仇恨倍率约为 11 而非 1——这是刻意设计的坦克 / 拉仇恨角色。

该效果拥有自己的图标物品 `aggro_up_icon`。

## 挑衅棒

`provoking_stick`（2 刻使用冷却）是一个**开关**：

- 在你**没有**挑衅时使用，会施加**无限持续时间**的挑衅（等级 0，非环境效果，无粒子，但显示图标）。
- 在你**已有**挑衅时使用，会通过效果移除保护器把它移除。
- 在挑衅生效期间**丢弃**挑衅棒，同样会移除该效果。

由于该效果以无限持续时间施加，挑衅棒就是战斗中转交拉仇恨角色的预期方式。

## 效果移除保护

模组包含一个供挑衅棒路径使用的移除保护器（`grantAndRemove`）。其用途是让模组自身对挑衅的移除成为合法操作，以区别于任意的外部清除。模组另外还对原版效果指令做了 mixin。

## 首领血条

本德森的首领血条由一个感知仇恨的绘制器渲染，字符串 `text.lanfasie_benderson.enmity_bar.aggro`（「引战」）标注了引战读数，因此玩家可以看到当前是谁吸引着首领的注意。

## 受伤加重

`lanfasie_benderson:vulnerability_up`（「受伤加重」）是配套的**有害**效果，会提高受影响实体承受的伤害。它与[属性与伤害类型](08_attributes_and_damage_types.md)中描述的伤害闸属性协同工作。

[返回首页](index)
