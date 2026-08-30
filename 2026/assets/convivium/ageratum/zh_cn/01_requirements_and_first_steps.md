---
title: 运行要求与起步
navigation:
  title: 01 运行要求与起步
---

# 运行要求与起步

## Caupona 是必需的

| 依赖 | 类型 | 范围 | 侧 | 加载顺序 |
|:---|:---|:---|:---|:---|
| `caupona` | **required** | `[6.0.2,)` | BOTH | NONE |
| `neoforge` | required | `[26.1.2,)` | BOTH | AFTER |
| `minecraft` | required | `[26.1.2, 26.2)` | BOTH | NONE |

这里没有可绕过的余地——会饮是附属模组，而声明对此很诚实。请先安装 Caupona 6.0.2 或更高版本。

::: info
元数据有一处小特点，若你要对照文件值得知道：**`version` 是 `${file.jarVersion}`** 而不是某个 Gradle 属性，而 `modId`、`displayName` 与 `authors` 在 toml 里都是硬编码字面量。这意味着你在游戏里看到的模组版本来自 jar 清单，而不是 `gradle.properties`。
:::

## 先读内置手册

在读本组页面之前，请先打开模组自己的 Patchouli 手册。它是双语且完整的，含六个分类：

| 分类 | 内容 |
|:---|:---|
| `beverage_basics` | 风味、sway、sway 列表与味道 |
| `beverage_menu` | 各款饮品 |
| `feast` | 上菜与宴席内容 |
| `mechanisms` | 机械 |
| `misc` | 其余杂项 |
| `worldgen` | 模组向世界添加的内容 |

本组 Ageratum 页面刻意不重述手册已给出的配方流程，而是讲**它们背后的系统**与手册未涉及的源码细节。

## 你会朝什么方向建设

大致链路是：

1. **种植或采集**投入物 —— 模组添加了世界生成（2 个文件）以及 `#convivium:fruits`、`#convivium:sweeteners` 这类标签。
2. **加工它们** —— 研磨与压榨（16 条配方）把固体变成 must 与果汁。
3. **浓缩或转化流体** —— 盆负责蒸发与浓缩（3 条）；流体转化负责其余（6 条）。
4. **酿造饮品** —— 28 条饮品配方，按风味条件匹配而非按固定网格。
5. **端上桌** —— 五种器皿（碗、杯、壶、马克杯、瓶），或用**饮品售卖机**。

第 2–4 步才是真正的系统所在；见[味道与风味](02_tastes_and_relishes)与[饮品与配方](03_beverages_and_recipes)。

## 器皿

一杯成品饮品有五种呈现形式，各有自己的显示名模板：

| 物品 | 装满时显示 |
|:---|:---|
| `convivium:beverage` | `Bottle of %s` |
| `convivium:beverage_bowl` | `Bowl of %s` |
| `convivium:beverage_cup` | `Cup of %s` |
| `convivium:beverage_jug` | `Jug of %s` |
| `convivium:beverage_mug` | `Mug of %s` |

::: warning
**这五个基础物品名，加上味道提示的缩写，全部在 `zh_cn` 中缺失。** 在中文客户端上，空器皿的名称与味道读数会回退为原始键。详见[器械与须知](04_equipment_fluids_and_technical_notes)。
:::

## 两个 JEI 分类

若你装了 JEI，会出现两个自定义分类：

- **Evaporation & Concentration**（蒸发与浓缩）—— 盆
- **Grinding & Squeezing**（研磨与压榨）—— 研磨

饮品匹配本身是基于条件而非基于网格的，这正是它无法像有序配方那样归结为一张简单 JEI 页面的原因。

[返回首页](index)
