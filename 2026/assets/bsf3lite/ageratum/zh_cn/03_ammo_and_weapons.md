---
title: "弹药与武器"
navigation:
  title: "03 弹药与武器"
---

# 弹药与武器

发射器本身不装弹药。它们从武器上读出已选定的弹药类型，然后从你的物品栏里取出匹配的雪球 —— 并优先使用储存罐而不是散装堆叠。

## 储存罐

模组注册了两种储存罐物品 `snowball_tank` 与 `large_snowball_tank`，二者都以空罐形式获得。它们的提示文本给出了完整装填流程：

| 操作 | 结果 |
|:---|:---|
| 副手拿罐、主手拿雪球并使用 | 把这些雪球装入罐中 |
| 副手为空、主手拿罐并使用 | 取出一颗雪球 |
| 主手拿罐并按修饰键 | 取出**全部**雪球 |

一个罐子储存大量单一类型的雪球，随后作为武器的弹药来源。储存的类型记在 `bsf3lite:ammo_item` 数据组件里，装填量则记在堆叠的损伤值上 —— 这正是当你携带多个罐子时，武器的弹药检索会挑出**最满**的那一个的原因。

## 选择弹药

| 按键 | 默认 | 动作 |
|:---|:---|:---|
| `key.bsf3lite.ammo_switch_next` | `H` | 切换到下一种弹药 |
| `key.bsf3lite.ammo_switch_prev` | `G` | 切换到上一种弹药 |

两者都位于按键分类 **Better Snowball Fight**（`bsf3lite:main`）。HUD 会在「Ammo in use:」标签旁显示上一种、当前与下一种弹药，其发射顺序由武器每刻从你的物品栏重新计算。

具体提供哪些雪球取决于武器：每件发射器带有一个类型标志，只有标志重叠的雪球才有资格。部分武器还会额外拒绝散装雪球。

::: info
语言文件里的兼容性指示键拼写为 `lunch_yes_cannon` / `lunch_no_cannon` 等 —— 是 “lunch” 而非 “launch”。这只是内部键名，不影响显示出来的「Cannon ✓ / Cannon ✗」文本，但你按 launch 去搜是搜不到的。
:::

## 大炮

| 物品 | 行为 |
|:---|:---|
| `snowball_cannon` | 发射高速雪球 |
| `powerful_snowball_cannon` | 雪球更快，并附带虚弱效果 |
| `freezing_snowball_cannon` | 雪球附带冰冻缓速，并大幅增强冰系雪球 |
| `implosion_snowball_cannon` | 消耗爆炸雪球，把前方所有实体推开 |

雪球大炮是这一系的基座。强力与冰冻大炮是模组里仅有的两件通过**锻造转化**制成的武器，用 `snowball_cannon_upgrade_smithing_template` 加一枚核心 —— 模板提示文本明确列出「Applies to: Snowball Cannon」与「Ingredients: Snowball Cannon Upgrade Core」。除它们之外，模组里唯一的锻造配方就是下界合金雪球夹钳，走的是常规原版下界合金升级路线。内爆雪球大炮虽然是四者中最异类的一件，却是普通有序配方。

## 步枪

| 物品 | 关系 |
|:---|:---|
| `snowball_rifle` | 基础步枪 |
| `powerful_snowball_rifle` | 强力变体 |
| `freezing_snowball_rifle` | 冰冻变体 |

三把步枪对应大炮的三个档次。请注意：62 个配方文件中**没有任何一把步枪** —— 步枪已注册且可用，但在本构建中**没有合成配方**。

## 速射

| 物品 | 行为 |
|:---|:---|
| `snowball_machine_gun` | 快速连发雪球；**只能从储存罐发射** |
| `snowball_shotgun` | 一次发射四颗雪球，后坐力很大 |

机枪「仅限储存罐」的限制写在它自己的提示文本里。它还用数据组件记录开火计时与过热标志，并有专门的 `machine_gun_cooling` 音效 —— 持续开火会强制进入冷却。

霰弹枪的后坐力不是固定值：提示文本说其大小**取决于装填的雪球类型**，所以沉重的黑曜石装填踢得比光滑雪球更狠。它有两个开火音效 `shotgun_fire1` 与 `shotgun_fire2`。

## 特种发射器

| 物品 | 行为 |
|:---|:---|
| `sculk_snowball_launcher` | 发射会发出噪音的幽匿雪球 |
| `snowman_in_hand` | 高速发射雪球；修饰键降低散布，并吸收任何雪来补充储量 |

幽匿雪球发射器正是模组那 **87 个 meme 音效事件**的归宿。修饰键加鼠标滚轮切换音效，HUD 会报出「Sound *n*」或「Random sound」：

- 音效 id `-1` 表示随机选取，
- id `0`–`86` 直接选中 `memesound00` 到 `memesound86`。

所选 id 逐堆叠存放在 `bsf3lite:sculk_sound_id` 组件中，且双向循环回绕。

## 配方

<recipe id="bsf3lite:snowball_cannon"/>

<recipe id="bsf3lite:snowball_machine_gun"/>

<recipe id="bsf3lite:snowball_shotgun"/>

<recipe id="bsf3lite:snowball_storage_tank"/>

[返回首页](index)
