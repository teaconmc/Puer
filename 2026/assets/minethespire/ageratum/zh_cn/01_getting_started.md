---
title: "上手"
navigation:
  title: "上手"
---

# 上手

我的尖塔不添加任何方块，也没有世界生成。整个模组只有**一个**合成配方，其余物品目前都只能从创造物品栏或 `/give` 获得。

## 真正注册了什么

| 类别 | 数量 | 说明 |
|:---|:---|:---|
| 物品 | 79 | 67 个遗物 + 12 个非遗物物品 |
| 方块 | 0 | `ModBlocks` 的类体是空的 |
| 实体 | 6 | 4 种 Orb、1 种手里剑弹射物、1 种药瓶弹射物 |
| 状态效果 | 11 | 其中一个标记了 `@Deprecated` |
| 药水 | 12 | 其中 10 种可通过酿造获得 |
| 伤害类型 | 3 | `orb_lightning`、`orb_dark`、`bouncing_hit` |
| 附魔 | 0 | 整个 `ModEnchantments` 类体都被注释掉了 |
| 战利品修改器 | 0 | 不添加任何世界掉落 |

任何物品都**没有世界生成、没有结构、没有战利品表、没有村民交易**。在不作弊的生存世界里，唯一可获得的物品是灵体。

## 创造物品栏

所有物品与药水变体都收进同一个创造标签页，其注册组为 `minethespire`，图标是**故障 面具**。标签页的英文显示名是自动生成的 `Minethespire`，中文翻译为 `我的尖塔`。

药水变体是逐个药水单独加入标签页的，且选择并不统一——有些药水即使酿造产出的是普通瓶装，也只往标签页里放喷溅型和／或滞留型。详见 [05 药水与酿造](05_potions_and_brewing)。

## 唯一的合成配方

**灵体**（`minethespire:spirit`）是全模组唯一拥有真实配方 JSON 的物品。

<recipe id="minethespire:spirit"/>

食用灵体是普通的进食动作（饱食度 1、饱和度 0.1、始终可食用），并施加 `6000` tick（5 分钟）的**无实体**效果。

## 安装 Curios

Curios 是**可选**依赖，但没有它遗物基本无法使用。

- 装有 Curios 时，右键遗物即可装进尖塔遗物栏位，模组还会自行生成槽位定义与物品标签。
- 没有 Curios 时，`EventListeners.onServerStarted` 会记录 `Mod Curios is not installed. Some features are disabled.`。遗物右键会退化为原版行为，遗物查找也改为扫描原版装备槽。

遗物的**属性修饰符**声明在 `EquipmentSlotGroup.ANY` 上，所以只要装备在任何位置，属性依然生效；Curios 槽位只是提供了 9 个安放位置。

## 建议的第一步

1. 安装 Curios，让 `spire_relic` 与 `orginal_spire_relic` 槽位存在。
2. 从创造物品栏取一件*原始*遗物（例如 `minethespire:cracked_core`）和一两件普通遗物。
3. 手持右键把它们装入槽位。
4. 打开战斗状态 HUD（客户端配置 `combat_state`，默认 `false`），这样你能看到「进入战斗」类遗物何时触发。
5. 攻击一只敌对生物以进入战斗，观察遗物触发，然后用 `/mts orb channel` 试玩 Orb 系统。

## 接下来读什么

- [02 遗物系统与 Curios 槽位](02_relics_and_curios) 查看完整遗物表
- [03 Orb 系统](03_orbs) 了解 Orb 机制
- [08 命令与配置](08_commands_and_config) 查看上面提到的配置项

[返回首页](index)
