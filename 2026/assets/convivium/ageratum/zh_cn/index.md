---
title: 会饮
navigation:
  title: 会饮
---

# 会饮

**会饮**（模组 ID `convivium`，GPLv3，作者 khjxiaogu 与 Lyuuke）是 **Caupona 的必需依赖附属模组**，添加一整套饮品系统：五个味道维度、六种以罗马神祇命名的风味（relish），以及一批把水果与谷物变成宴席上值得端出之物的器皿与机械。

模组名是拉丁语的「宴会」，它的设计也围绕这个概念，而不是围绕大批量食物生产。

## 阅读路线

- [01 运行要求与起步](01_requirements_and_first_steps) —— Caupona 是硬依赖、内置手册，以及从哪开始。
- [02 味道与风味](02_tastes_and_relishes) —— 五个味道轴与六种风味，这是其余一切的核心。
- [03 饮品与配方](03_beverages_and_recipes) —— 一杯饮品如何被匹配、条件树，以及优先级为何决定结果。
- [04 器械与须知](04_equipment_fluids_and_technical_notes) —— 盆、汽转球、售卖机，以及中文客户端上哪些东西没有名字。

## 一览

| 关注点 | 详情 |
|:---|:---|
| 模组 ID | `convivium` |
| 许可 | **GPLv3** |
| 作者 | khjxiaogu、Lyuuke |
| Minecraft | `[26.1.2, 26.2)` |
| **必需依赖** | **`caupona` `[6.0.2,)`，side BOTH** |
| 方块 | **18** |
| 物品 | **70** |
| 配方 | **158** 条，分 7 种类型 |
| 战利品表 | 16 |
| Mixin | 2 个（`LivingEntityMixin`、`RecipeManagerMixin`） |
| 配置项 | 10 |
| 命令 | 2 |
| **内置手册** | **有 —— 双语 Patchouli 手册，6 个分类** |
| 语言 | `en_us` **177** 键 / `zh_cn` **166** 键 |

::: danger
**Caupona 是硬性要求**，声明为 `type = "required"`、版本范围 `[6.0.2,)`、两侧生效。这不是可选集成——没有安装 Caupona 时模组根本不会加载。而这个声明也是正确的：依赖真实存在，元数据如实陈述。
:::

## 它伸进 Caupona 的唯一一处

模组在 `data/caupona/` 下**恰好只有一个文件**，而且是一处精确、最小的触碰：

```json
data/caupona/tags/block/chimney_ignore.json
{ "values": ["convivium:aeolipile"] }
```

它把模组自己的**汽转球**加入 Caupona 的「烟囱忽略此方块」标签。其余一切贡献都在自己的命名空间内——**包括 88 条 `caupona:bowl` 配方**，它们声明在 `data/convivium/recipe/` 下，只是使用了 Caupona 的配方类型。

::: info
这个 88 值得留意：**本模组中数量最多的配方类型属于 Caupona 而不属于会饮自己。** 它为 Caupona 既有的碗菜系统添加的内容，远多于它为自己任何机械添加的内容。
:::

## 内置手册

模组随包一整套**双语 Patchouli 手册**（82 个文件），含六个分类：`beverage_basics`、`beverage_menu`、`feast`、`mechanisms`、`misc` 与 `worldgen`。`en_us` 与 `zh_cn` 两棵目录树都完整存在。

因此游戏内已经有一份参考。本组页面是**补充**——它们讲手册所解释的机制，外加手册未提及的源码层面事实。
