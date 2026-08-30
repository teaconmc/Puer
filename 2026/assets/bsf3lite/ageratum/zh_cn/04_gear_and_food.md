---
title: "装备与食物"
navigation:
  title: "04 装备与食物"
---

# 装备与食物

除了把东西扔出去，模组还加入了防御装备、机动物品、合成核心与几样消耗品。

## 接住雪球

| 物品 | 行为 |
|:---|:---|
| `glove` | 接住飞来的雪球 |
| `jedi_glove` | **不接触**即可接住朝你飞来的雪球 |
| `repulsive_field_generator` | 生成一个能拦停并弹回雪球的捕获场 |

两只手套是上一页所有发射器的直接反制：持手套的防守方会把来袭弹体变成自己的弹药。绝地手套把这件事升级为远距离接取。

斥力场发生器属于区域封锁而非个人接取。它有四个专属音效事件 —— `field_start`、`field_push`、`field_snowball_stop` 以及共用的推动提示 —— 外加自己的 `generator_fix` 与 `generator_push` 粒子，因此场的状态对附近所有人都可听可见。

## 机动

| 物品 | 行为 |
|:---|:---|
| `ice_skates` | 在冰上移动更快，在非冰面上受阻 |
| `snow_fall_boots` | 落在雪上时消除坠落伤害 |
| `cold_compression_jet_engine` | 提供持续推力；站在雪上会自动充能 |

冰刀是真正的取舍而非纯粹升级：冰上的速度加成伴随着其他所有地面上的移动惩罚。

落雪靴有一处附魔联动 —— 其提示文本写着 *「Enchanting:[动能储存] 依据坠落高度获得加速」*，因此带上该附魔后，一次长距离坠落到雪上会转化为前向速度而不是伤害。

喷气引擎有五个启动音效（`cold_compression_jet_engine_startup1`–`startup5`）与一个移动音效实例，其物品模型还有专门的 `cold_compression_jet_engine_sc` 子模型目录来表现充能状态。

## 雪处理工具

| 物品 | 行为 |
|:---|:---|
| `basin` | 盛雪并向前抛出；抛出的雪会**堵塞目标的武器** |
| `snow_block_blender` | 把雪块搅成细雪 |
| `snow_trap_setter` | 按住可在雪上放置陷阱 |
| `smart_snow_block` | 召唤并配置进阶雪傀儡 |

盆是模组的致残工具。它抛出的雪施加**武器堵塞**效果，使目标短时间内无法使用武器 —— 这是对付弹药充足的枪手的反制手段。它携带 `basin_snow_type` 组件，语言文件中有三种状态：空盆、盛雪的盆、盛细雪的盆。修饰键在铲雪与抛雪之间切换。

## 核心

模组注册了五枚核心，其中四枚是纯粹用于合成的稀有物品：

| 物品 | 作用 |
|:---|:---|
| `super_power_core` | 武器升级材料（罕见） |
| `super_frozen_core` | 武器升级材料（罕见） |
| `repulsion_core` | 罕见合成材料 |
| `gravity_core` | 罕见合成材料 |
| `unstable_core` | **可在磁石上分裂** |

不稳定核心是唯一带有自身行为的一枚。在磁石上分裂它有专属的 `unstable_core_break` 音效与专属进度。动力核心与冰冻核心各有两个配方（`super_power_core` / `super_power_core_2`），因此每枚都有两条获取路线。

::: info
`repulsion_core` 与 `gravity_core` 已注册且可合成，但本构建中没有任何东西消耗它们 —— 它们在完整版模组中喂养的物品（重力与斥力雪球）在这里并未注册。参见[范围、本地化与网络](08_scope_localization_and_networking)。
:::

## 食物与饮品

| 物品 | 行为 |
|:---|:---|
| `popsicle` | 扑灭身上的火焰 |
| `milk_popsicle` | 扑灭火焰**并**移除状态效果 |
| `vodka` | 授予抗寒 |

牛奶冰棒是奶桶职能的甜点版；普通冰棒只处理火焰。伏特加是模组自身 `cold_resistance` 效果的既定来源 —— 这一点很重要，因为这里太多雪球都会冻结目标。

## 配方

<recipe id="bsf3lite:glove"/>

<recipe id="bsf3lite:jedi_glove_1"/>

<recipe id="bsf3lite:repulsive_field_generator"/>

<recipe id="bsf3lite:empty_basin"/>

<recipe id="bsf3lite:snow_block_blender"/>

<recipe id="bsf3lite:ice_skates"/>

<recipe id="bsf3lite:snow_fall_boots"/>

<recipe id="bsf3lite:unstable_core"/>

<recipe id="bsf3lite:popsicle"/>

<recipe id="bsf3lite:vodka"/>

[返回首页](index)
