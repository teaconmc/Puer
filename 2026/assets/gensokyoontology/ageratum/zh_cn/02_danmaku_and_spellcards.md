---
title: "弹幕与符卡"
navigation:
  title: "02 弹幕与符卡"
---

# 弹幕与符卡

## 弹幕台是 5×5 网格 —— 而它不是原版配方

模组添加了 `gensokyoontology:danmaku_table`，带一个**弹幕合成**界面。它的菜单类明确写出了槽位布局：

| 常量 | 值 | 含义 |
|:---|---:|:---|
| `RESULT_SLOT` | 0 | 输出槽 |
| `CRAFT_SLOT_START` | 1 | 第一个合成槽 |
| **`CRAFT_SLOT_COUNT`** | **25** | **一个 5×5 网格** |
| `CRAFT_SLOT_END` | 26 | |
| `INV_SLOT_START` / `END` | 26 / 53 | 玩家物品栏 |

::: tip
**这正是模组不需要 `data/` 目录的原因。** 菜单类 import 了 `Container`、`Inventory`、`Player`、`ItemStack` 与 inventory 包——但**完全没有 import 任何配方类**。匹配是模组自己在 25 个槽位上的逻辑，而不是 `RecipeManager` 查询。

所以「磁盘上没有配方」与「存在一个合成台」是自洽的而非矛盾的。**数据包无法添加弹幕图案，因为不存在可供添加的配方类型。**
:::

第二个工作站是**弹幕构建器**（`danmaku_builder`，容器标题键 `container.gensokyoontology.danmaku_builder.title`），与它并存。

## 轨迹编辑器是三轴的

界面字符串揭示这是一个完整的三维朝向编辑器，而不是简单的方向选择器：

```
gui.gensokyoontology.rail_adjust.title   = Rail Adjustment
gui.gensokyoontology.label.roll          = Roll:
gui.gensokyoontology.button.increase_roll / decrease_roll   = + / -
gui.gensokyoontology.button.increase_yaw  / decrease_yaw    = + / -
gui.gensokyoontology.button.increase_pitch/ decrease_pitch  = + / -
gui.gensokyoontology.silder_prefix.angle_x = X Axis Angle:
gui.gensokyoontology.silder_prefix.angle_y = Y Axis Angle:
gui.gensokyoontology.silder_prefix.angle_z = Z Axis Angle:
```

同时提供了两种控制方式：**滚转、偏航、俯仰各有 +/− 按钮**，以及 **X、Y、Z 轴角度的滑块**。「Rail」（轨）是模组对弹幕路径的称法。

::: info
键名 `silder_prefix` 在源码里拼错了（应为 *slider*）。与本批其他「真实但拼错」的标识符一样，**要匹配就必须照错拼写**——但由于它是翻译键而非数据包引用的东西，对玩家没有可见影响。
:::

## 弹丸阵容

八种不同的弹丸实体，各自独立注册：

| 实体 | 名称 |
|:---|:---|
| `danmaku_entity` | Danmaku Shot |
| `large_shot` / `small_shot` | Large / Small Shot |
| `heart_shot` | Heart Shot |
| `star_shot_small` / `star_shot_large` | Star Shot Small / Large |
| `rice_shot` | Rice Shot |
| `scale_shot` | Scale Shot |

另有 `fake_lunar` 与符卡载体 `spell_card_entity`。

模组还注册了自己的死亡消息：

```
death.attack.danmaku = Player is killed by danmaku
```

**弹幕是真实的伤害来源**，不是装饰性粒子。

## 符卡带有标准标题

符卡本身就是实体，命名遵循东方惯例的括号标题形式：

| 键 | 显示为 |
|:---|:---|
| `spellcard.wave_and_particle` | Spell Card「Wave And Particle」 |
| `spellcard.sc_ido_no_kaiho` | Spell Card「Ido no Kaiho」 |
| `spellcard.sc_hell_eclipse` | Spell Card「Hell Eclipse」 |
| `spellcard.sc_mountain_of_faith` | 「Mountain Of Faith」 |
| `spellcard.sc_mobius_ring_world` | "Mobius Ring World" |

还有一个物品形态 `sc_rorshach_danmaku`，显示为 **Unconscious "Rorschach in Danmaku"** —— 正是原作使用的「难度 + 标题」两段式结构。

::: info
**各条目的引号用法并不统一** —— 有的用 `「…」`、有的用普通 `"…"`，而 `sc_mountain_of_faith` 完全省略了 `Spell Card` 前缀。语言文件里就是这样；这只是外观问题，但意味着符卡名在游戏里不会全都看起来一致。
:::

## 符卡行为在代码里

`SpellBehaviors.java` 用 lambda 定义效果，例如类型为 `Spell<LivingEntity>` 的 `MANIA_DEPRESS`。

::: warning
**不要把 `SpellBehaviors.MANIA_DEPRESS` 与状态效果混为一谈。** 语言文件里有 `effect.gensokyoontology.mania` 与 `effect.gensokyoontology.depression` 两个键，但它们与这个符卡行为**没有**关联——而且如[须知](04_registries_and_technical_notes)所述，那六个效果目前都未启用。

符卡是真的；那些效果键不是。
:::

[返回首页](index)
