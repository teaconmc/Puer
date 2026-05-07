---
title: 方块建模
navigation:
  title: 方块建模
---

# 方块建模

**方块建模**（模组 ID `yuushya_modelling`，版本 `2.4.2`，MIT）是一套**自由建模工具**。它不提供成品装饰方块，而是给你三种载体方块——它们能穿上*任何*方块的外观——再配一组工具来位移、旋转、缩放并叠放这些外观，直到拼出你想要的东西。

它是悠世（Yuushya）项目的建模部分，署名八人团队。

::: warning
**注册表 ID 用的是 `yuushya`，不是 `yuushya_modelling`。** 模组 ID 与注册命名空间被刻意分开：

```java
MOD_ID      = "yuushya"             // 全部方块、物品、分页、数据组件
MOD_ID_USED = "yuushya_modelling"   // @Mod 注解、网络包、语言文件
```

所以命令是 `/ageratum yuushya_modelling`，但物品是 `yuushya:pos_trans_item`、`yuushya:showblock` 等。在命令或数据包里写 `yuushya_modelling:` **解析不到任何东西**。
:::

## 阅读路线

- [01 获取开始](01_getting_started) —— 两个创造分页，以及 58 件物品的分布。
- [02 三种载体方块](02_carrier_blocks) —— 展示方块、物品方块、文字方块。
- [03 变换工具](03_transform_tools) —— 位移、旋转、缩放与分层。
- [04 雕刻与颜色](04_engraving_and_colour) —— 两个菜单与取色器。
- [05 技术说明](05_technical_notes) —— 命名空间、重载命令与已知缺口。

## 一览

| 关注点 | 详情 |
|:---|:---|
| 模组 ID | `yuushya_modelling` |
| **注册命名空间** | **`yuushya`** |
| 版本 / 许可 | `2.4.2` / MIT |
| Minecraft | 26.1.2（gradle 范围 `[26.1.2]`） |
| 方块 | **3** |
| 方块实体 | 3 |
| 物品 | **58** |
| 配方 | **52** |
| 战利品表 | **2** —— 见[技术说明](05_technical_notes) |
| 数据组件 | 5 |
| 菜单 | 2（`engrave`、`history`） |
| 创造分页 | 2（`yuushya:modelling`、`yuushya:primitive`） |
| 命令 | 1（`/yuushya_reload_model`） |

## 一段话说清它的思路

普通装饰模组给你一把椅子。这个模组给你一个**展示方块**——它能长成游戏里任何 blockstate 的样子——再配上工具把那个外观挪动几个十六分之一格、旋转、缩放，并把好几个外观叠进同一个方块空间。于是椅子成了你**搭出来**的东西：一片上移的木板台阶加一根侧放的栅栏柱；而因为全在一个方块里，它只占一格空间。

这就是为什么工具清单很长而内容清单很短：这个模组的内容是**能力**，不是目录。

## 两个分页

| 分页 | 图标 | 里面有什么 |
|:---|:---|:---|
| `yuushya:modelling` | `pos_trans_item` | 三种载体方块与整套工具 |
| `yuushya:primitive` | `chibi_0` | 32 个 `primitive_*` 基本形状，以及 chibi 装饰物 |

`primitive` 分页是原始素材所在处——32 个全部有配方，因此整套调色板在生存中都能合成。
