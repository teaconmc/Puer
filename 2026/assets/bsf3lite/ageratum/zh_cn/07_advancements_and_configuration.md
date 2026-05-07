---
title: "进度与配置"
navigation:
  title: "07 进度与配置"
---

# 进度与配置

## 进度

存在 13 个进度 JSON，根为 `bsf3lite:root`（「Better Snowball Fight」，图标 `bsf3lite:smooth_snowball`）。它们构成的是一棵真正的进度树而非平铺列表 —— `shotgun_consume` 挂在 `snowball_cannon` 之下，`vodka_drink` 挂在 `popsicle_consume` 之下。

| 进度 JSON | 标题 | 达成条件 |
|:---|:---|:---|
| `root` | Better Snowball Fight | 入口 |
| `snowball_clamp_use` | 效率升级 | 用夹钳制作光滑雪球 |
| `explosive_snowball` | 洞里开火 | 制作一些爆炸雪球 |
| `glove_use` | 今天不行，谢谢 II | 用手套接住雪球 |
| `powder_snow_bucket_combat` | 冰桶挑战 II | 用细雪桶攻击烈焰人 |
| `empty_basin_full` | 冰盆挑战 | 往盆里装雪 |
| `popsicle_consume` | 降温 | 吃下冰棒或牛奶冰棒 |
| `vodka_drink` | 不畏严寒 | 饮用伏特加 |
| `snowball_cannon` | 局势升级 | 制作雪球大炮 |
| `snowball_machine_gun` | 未经许可的改装 | 制作雪球机枪 |
| `shotgun_consume` | pooon kaka | 获得一把霰弹枪 |
| `unstable_core_craft` | 我裂开了 | 分裂不稳定核心 |
| `repulsive_field_generator` | 相信我，飞行员 | 使用斥力场发生器 |

::: info
其中 4 个 JSON 文件名与其翻译键并不一致 —— `empty_basin_full` 用 `advancements.bsf3lite.empty_basin.*`，`shotgun_consume` 用 `...snowball_shotgun.*`，`unstable_core_craft` 用 `...unstable_core.*`，`vodka_drink` 用 `...vodka.*`。这些进度仍能正确显示，因为进度 JSON 是显式指名翻译键而不是从文件名推导。受影响的只有搜索替换工作。
:::

模组还注册了自己的判据触发器 `bsf3lite:snowball_damage_trigger`，因此数据包可以围绕雪球伤害构建进度 —— 语言文件里甚至带着一条「造成超过 40 点伤害」的标题，只是本构建没有任何 JSON 使用它。

## 服务端配置

SERVER 配置的 `server` 小节下共 7 个选项：

| 选项 | 默认值 | 范围 | 含义 |
|:---|:---|:---|:---|
| `explosiveDestroy` | `true` | 开/关 | 爆炸雪球是否破坏方块 |
| `shootingInertia` | `true` | 开/关 | 射击是否带惯性 |
| `reconstructSnowballCapacity` | `500` | `0`–`1100` | 重构雪球的储雪容量 |
| `icicleSnowballCapacity` | `2147483647` | `0`–`2147483647` | 冰锥雪球的储雪容量 |
| `expansionSnowballDuration` | `80` | `0`–最大 | 膨胀雪球存活刻数 |
| `reconstructSnowballDuration` | `80` | `0`–最大 | 重构雪球存活刻数 |
| `icicleSnowballDuration` | `80` | `0`–最大 | 冰锥雪球存活刻数 |

::: warning
`explosiveDestroy` 默认为 **true**，因此开箱即用的服务器允许爆炸雪球破坏地形。如果你在运营一个雪仗竞技场，几乎肯定要把它关掉 —— 整件事的意义就在于赛后场地还在。
:::

七个选项里有两个的实际范围比你可能猜到的窄得多。`reconstructSnowballCapacity` 上限是 **1100**，而不是整数最大值，因此服务器无法把重构雪墙任意推远。相比之下 `icicleSnowballCapacity` 的默认值就是整数最大值，所以它的默认状态实际上是「无限」。

## 客户端配置

CLIENT 配置只有一个选项：

| 选项 | 默认值 | 范围 | 含义 |
|:---|:---|:---|:---|
| `screenshake_intensity` | `1.0` | `0.0`–`5.0` | 屏幕震动幅度；`0.0` 关闭 |

屏幕震动由服务端通过 `bsf3lite:screenshake` 数据包驱动，但幅度完全是本地选择 —— 若震动让你晕，把它设为 `0.0`，这不会让你损失任何玩法信息。

::: info
不存在 COMMON 配置文件。每个玩法数值都在服务端，每个舒适度数值都在客户端 —— 这个划分是对的，但也意味着客户端无法为自己缓和 `explosiveDestroy`。
:::

[返回首页](index)
