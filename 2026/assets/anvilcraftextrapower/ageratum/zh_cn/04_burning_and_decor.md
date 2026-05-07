---
title: 燃烧方块与装饰
navigation:
  title: 燃烧方块与装饰
---

# 燃烧方块与装饰

本模组新增两种"燃烧"方块类型作为铁砧工艺热源，并最终留下残渣方块；另有一组装饰/展示与告示牌。

## 燃烧煤块

`burning_coal_block` 燃烧的煤炭块是基于煤炭的发光热源（光照 10），挂 `anvilcraftextrapower:redhot_blocks` 标签。不潜行站在上面会造成 4 点伤害（炙热地板）。它燃烧约 9600 tick 后变成 `ashes_block` 灰烬（块），灰烬块掉落 3–5 个 `ashes` 灰烬。若被爆炸击中，它会被重新放置并带有 `toboom` 标记并引爆，半径 3.5。

它的合成配方熔炼煤炭块：

<recipe id="anvilcraftextrapower:burning_coal_block"/>

## 燃烧镁块

`burning_magnesium_block` 燃烧的镁块是更亮的热源（光照 15），挂 `anvilcraftextrapower:incandescent_blocks` 标签。空手站在上面会造成 10 点伤害。它燃烧约 9600 tick 后变成 `magnesium_oxide_block` 氧化的镁块，后者掉落 3–5 个 `magnesium_oxide` 苦土。此外：

- 如果燃烧镁块被放在水旁，它会排干水并以半径 3.0 引爆。
- 如果其正上方有 `overheated` 过热方块，它会进入过热状态（更强的热源）。
- 被爆炸波及会设置爆炸标记，以半径 4.5 引爆。

镁块可以用打火石、火焰弹、铁砧工艺的多功能工具（火焰模式）、相邻的火焰/岩浆/红热或白热热方块、或燃烧的投射物点燃。

## 化学材料

镁/硫材料家族共享一条铁砧工艺式材料链：

| 材料 | 方块 | 说明 |
|:---|:---|:---|
| `magnesium_ingot` 镁锭 / `magnesium_nugget` 镁粒 | `magnesium_block` 镁块 | 储存/回收镁；镁锭可作信标支付物 |
| `sulfur` 硫磺 | `sulfur_block` 硫磺块 | 储存/回收硫磺 |
| `coal_powder` 煤粉 | — | 煤粉（挂 `c:dust/coal` 标签） |
| `magnesium_oxide` 苦土 | `magnesium_oxide_block` 氧化的镁块 | 燃烧镁的残渣 |
| `ashes` 灰烬 | `ashes_block` 灰烬 | 燃烧煤的残渣 |
| `sulfuric_acid` 硫酸 | — | 用于合成空铅酸电池 |

## 装饰与展示方块

| 方块 | 说明 |
|:---|:---|
| `light` 光 | 不可破坏、无碰撞、光照 15；放在燃烧方块旁 |
| `earth` 地球 | 实心展示方块，光照 15，不可破坏 |
| `display_mushroomcloud` 展示用蘑菇云 | 仅供展示的蘑菇云方块 |
| `sign_base`、`sign_anvil_fall`、`sign_construction`、`sign_do_not_operate`、`sign_highspeed_anvil`、`sign_laser_hazard`、`sign_radiation`、`sign_time_hazard`、`sign_strong_gravity`、`sign_magnetic_field` | 装饰性警示告示牌 |

[返回首页](index)
