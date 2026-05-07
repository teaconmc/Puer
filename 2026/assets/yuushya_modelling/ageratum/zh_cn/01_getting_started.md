---
title: 获取开始
navigation:
  title: 获取开始
items:
  - yuushya:pos_trans_item
description: 两个创造分页、哪些能合成，以及那条会让你栽跟头的 ID 规则。
---

# 获取开始

## 先说 ID 规则

模组里的一切都注册在 **`yuushya`** 之下，而模组本身叫 **`yuushya_modelling`**。在你写任何命令、数据包或 CraftTweaker 脚本之前：

| 你想做 | 就写 |
|:---|:---|
| 打开本指南 | `/ageratum yuushya_modelling` |
| 给自己一件工具 | `/give @s yuushya:pos_trans_item` |
| 放一个载体方块 | `/setblock ~ ~ ~ yuushya:showblock` |
| 重载模型 | `/yuushya_reload_model reload all` |

请注意命令名本身**完全没有命名空间前缀**——它就叫 `yuushya_reload_model`。

## 东西都在哪

**`yuushya:modelling`**（图标：层位移器）装着工作集：

- 三种载体方块——`showblock`、`itemblock`、`textblock`。
- 变换工具——见[变换工具](03_transform_tools)。
- 实用工具——`gui_item`、`history_item`、`color_picker_item`、`engrave_item`、`shape_item`、`destroy_item`、`debug_stick_item`、`get_lit_item`。

**`yuushya:primitive`**（图标：`chibi_0`）装着调色板：

- `primitive_1` 到 `primitive_32`——你用来给载体穿衣的原始形状。
- chibi 物品，是 `Rarity.RARE`、可堆叠 16 的装饰件。

## 可合成性

**58 件物品中 52 件有配方**，而且覆盖到了关键处：

| 类别 | 能合成吗 |
|:---|:---|
| 全部 32 个 `primitive_*` 形状 | **能**——整套调色板生存合法 |
| 变换与实用工具 | **能**（`pos_trans_item`、`rot_trans_item`、`scale_trans_item`、`slot_trans_item`、`micro_pos_trans_item`、`move_transformdata_item`、`get_blockstate_item`、`get_lit_item`、`gui_item`、`engrave_item`、`color_picker`、`hammer` 等） |
| `showblock`、`itemblock` | **能** |
| 材料（`the_encyclopedia`、`shimmering_pearl`、`everlasting_wood`、`sparking_flame`、`sprouting_dirt`、`floating_bloom`） | **能** |
| `textblock` | **没有配方** |

::: tip
那六件材料——百科、微光珍珠、恒久之木、迸溅之焰、萌发之土、漂浮之花——全是 `Rarity.RARE` 且堆叠 16。它们是工具合成的货币，所以**先做它们**。
:::

## 方块属性

三种载体共享同一套参数：

| 属性 | 值 |
|:---|:---|
| 强度 | `4.0` |
| 遮挡 | `noOcclusion()` + `forceSolidOn()` |
| 光照 | 由 `LIT` blockstate 驱动——见[雕刻与颜色](04_engraving_and_colour) |

`noOcclusion` 让载体在只承载局部形状时游戏不会剔除它背后的面；而 `forceSolidOn` 又保证它仍是有效的支撑面。

## 第一次建造，最短路径

1. 合成或取一个 `yuushya:showblock` 并放下。
2. 用 `get_blockstate_item` 对准你想复制外观的那个方块。
3. 把它应用到展示方块上。
4. 用 `pos_trans_item` / `rot_trans_item` / `scale_trans_item` 把那个外观挪到位。
5. 若形状需要两个部件，用 `slot_trans_item` 再加一层。

第 2–5 步的细节在[变换工具](03_transform_tools)。

[返回首页](index)
