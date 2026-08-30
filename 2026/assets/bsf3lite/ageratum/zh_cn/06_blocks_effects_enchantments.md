---
title: "方块、效果与附魔"
navigation:
  title: "06 方块、效果与附魔"
---

# 方块、效果与附魔

## 四个方块

| 方块 | 游戏内名称 | 作用 |
|:---|:---|:---|
| `loose_snow_block` | 松散雪块 | 内爆大炮可将其击碎为雪球的软雪 |
| `snow_trap` | **雪** | 由雪陷阱布设器放置的陷阱 |
| `critical_snow` | 暴击雪 | 由极冻雪球留下 |
| `smart_snow_block` | 智能雪块 | 傀儡头部、召唤器与配置面 |

::: warning
雪陷阱的显示名称字面上就是**「雪」** —— 不是「雪陷阱」。这是故意的：会自报身份的陷阱毫无用处。在 PvP 地图上，一个看起来、读起来都与普通雪一模一样的方块正是设计意图，所以不要指望提示文本会警告受害者。
:::

暴击雪是四者中唯一带方块实体的一个（`bsf3lite:critical_snow`），这也是它在创造它的雪球消失之后仍能跟踪自身存活时间的方式。

模组还把 `loose_snow_block` 等加入原版 `minecraft:block/snow` 与 `minecraft:block/mineable/shovel` 标签，因此它们对其他模组与工具而言表现得像雪。

## 状态效果

| 效果 | 来源 | 作用 |
|:---|:---|:---|
| `cold_resistance` | 饮用伏特加 | 抵抗模组的冰冻效果 |
| `weapon_jam` | 从盆中抛出的雪 | 目标短时间内无法使用武器 |

武器堵塞正是不起眼的盆值得进入正经配装的原因：这是唯一能让对手的发射器停摆、而不是靠对射压过去的手段。

模组还向原版 `minecraft:entity_type/freeze_immune_entity_types` 与 `minecraft:entity_type/fall_damage_immune` 标签添加了条目，因此它自己的实体不会成为自身机制的受害者。

## 附魔

三个附魔以数据包 JSON 定义在 `data/bsf3lite/enchantment/`：

| 附魔 | 游戏内名称 |
|:---|:---|
| `floating_shooting` | 悬浮射击 |
| `kinetic_energy_storage` | 动能储存 |
| `snow_golem_exclusive` | 雪傀儡专属 |

它们用真实标签接线，而非悬空放置：

- `bsf3lite:enchantable/floating_shooting_weapons` 定义哪些武器可附悬浮射击，
- `minecraft:item/enchantable/durability` 纳入模组工具，使其接受耐久附魔，
- `minecraft:enchantment/in_enchanting_table` 纳入模组附魔，使其出现在附魔台。

动能储存是唯一有明文物品联动的一个：落雪靴的提示文本说带上它后坠落高度会转化为加速。

::: info
由于三者都是数据包 JSON 且通过原版标签注册，数据包可以在不改动模组 jar 的前提下重定向或移除它们。
:::

## 占位标签

有两个标签纯属脚手架：`bsf3lite:item_none` 与 `bsf3lite:block_none`，二者都在代码中声明、也都有对应的空 JSON 文件。它们不含任何内容，也没有任何面向玩法的东西引用它们 —— 请视其为遗留物而非扩展点。

## 配方

<recipe id="bsf3lite:snow_trap_setter"/>

[返回首页](index)
