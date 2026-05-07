---
title: "通用机械：更多机器"
navigation:
  title: "通用机械：更多机器"
---

# 通用机械：更多机器

通用机械：更多机器（mod id `mekmm`，版本 2.0.0）是面向 NeoForge 的 Mekanism 附加模组，在基础模组之上增加更多机器与工厂。它要求 Mekanism 10.8.0 或更高版本，并透过 Mekanism 的模块与注册 API 注册全部内容。

## 模组内容

- 新增单机：回收机、种植站、CNC 冲压机、CNC 车床、CNC 轧机、压机、复制机、流体复制机、化学复制机、环境气体收集器、无线充能站与无线传输站。
- 上述机型的基础/高级/精英/终极工厂变体；加载 Evolved Mekanism 时追加其额外等级。
- 高级工厂模块：为大量既有 Mekanism 处理链增加工厂变体，例如氧化、溶解、清洗、结晶、加压反应、离心、液化、颜料提取与上色。
- 大型机器模块：大型旋转冷凝机、大型化学灌注器、大型电解分离器、大型太阳中子活化器、大型反质子核聚变机与大型颜料混合机，以及中/极限化学品储罐（基础至终极等级）。
- 大型发电机模块（仅安装 Mekanism: Generators 时注册）：大型热力发电机、大型燃气发电机、大型风力发电机，以及太阳能热力发电机。
- 银资源线：银矿石/深层银矿石、粗银、银碎块、银晶体、污浊银粉、银粉、银碎片、银锭、银粒、富集银、银块与污浊/纯净银泥浆。
- 物品与化学物：废料、废料盒、空晶体、UU物质、连接器、高级电解核心、反射镜、装饰人偶，以及营养膏、营养液、UU物质与不稳定维度气体等化学物。

## 阅读路线

- [获取开始](01_getting_started) - 运行要求、创造栏、银资源线、机器系列与配方查看器。

## 参考快照

| 项目 | 值 |
|:---|:---|
| 模组 ID | `mekmm` |
| 显示名称 | 通用机械：更多机器 |
| 版本 | `2.0.0` |
| 许可证 | MIT |
| 目标环境 | Minecraft `[26.1.2, 26.2)`、NeoForge `26.1.2.64-beta` |
| 必需依赖 | Mekanism `[10.8.0,)`，在 Mekanism 之后加载 |
| 可选联动 | Mekanism: Generators（大型发电机）、Curios（充能）、JEI 配方查看器 |
| 源码说明 | EMI 与 CraftTweaker 集成类存在于源码树，但被排除在当前主构建的源集之外 |
| 配置文件 | `machine-storage` 与 `machine-usage` 配置，以及注入的 `mekanism.world.silver.*` 世界生成配置项 |

## 银矿的世界生成

银矿石**确实有**自己的世界生成。`data/mekmm/worldgen/` 下有两个 configured feature —— `ore_silver_large`（index 1）与 `ore_silver_small`（index 0），均为 `type: mekanism:ore`，且通过各自的石头与深层石可替换标签**同时**指向 `mekmm:silver_ore` 与 `mekmm:deepslate_silver_ore` —— 另有两个对应的 placed feature，以及 `data/mekmm/neoforge/biome_modifier/silver.json`。

该修改器是一条 `neoforge:add_features`，位于 `underground_ores` 阶段，而它的群系选择器是 **`#mekanism:spawn_ores`** —— 这是 Mekanism 自己的群系标签，而不是 `#minecraft:is_overworld`。**因此银矿出现在哪里，取决于那个 Mekanism 标签怎么写**：整合包改动该标签，银矿的分布随之改变。

Mekanism 配置项控制的是这些 feature **是否运行**。两个 placed feature 的首个修饰符即为 **`mekanism:disableable`**，按 `ore_type: {type: silver, index: N}` 键入，故 `mekanism.world.silver.*` 配置项可以把它们关掉。

::: warning
两个 placed feature 都设置了 **`retro_gen: false`**。**已生成的区块不会追溯生成银矿** —— 在老存档上只能在新生成的地形里找到银，因此请在大规模探索之前装上本模组，或做好向外远行的准备。
:::

详见[获取开始](01_getting_started)。
