---
title: "获取开始"
navigation:
  title: "获取开始"
---

# 获取开始

## 运行要求与安装

- Minecraft `26.1.2` 或 26.1 线更新的版本，以及匹配的 NeoForge 构建（本工程目标为 `26.1.2.64-beta`）。
- Mekanism `10.8.0` 或更高版本是硬依赖，且在本模组之前加载。模组 jar 还会通过 JarJar 内嵌 Mekanism 本体、Mekanism: Additions、Mekanism: Generators 与 Mekanism: Tools。
- Mekanism: Generators 是可选的；只有在生成器模块已加载时，大型发电机模块才会注册方块。
- JEI 作为配方查看器受支持；EMI 与 CraftTweaker 集成类存在于源码树，但不在当前主构建中。

## 创造栏

全部内容通过「通用机械：更多机器」创造栏提供，其中也包含高级工厂方块、大型机器方块，以及（加载生成器模块时）大型发电机方块。

## 银资源线

银矿石（`mekmm:silver_ore`）与深层银矿石（`mekmm:deepslate_silver_ore`）是已注册方块，需要正确的挖掘工具（硬度分别为 3 与 4.5）。模组通过 **mixin** 把 SILVER 条目注入 Mekanism 的矿石类型注册表，并带有小/大矿脉配置；矿脉形态由 `mekanism.world.silver.generate` 等 Mekanism 配置项决定（小矿脉锚点 -24 至 88，大矿脉锚点 -32 至 64，梯形分布）。

**银矿确实会自然生成。** 模组随包一整套独立的世界生成数据 —— 两个 configured feature、两个 placed feature，以及一个指向 `#mekanism:spawn_ores` 的生物群系修改器 —— 因此你可以真的去挖矿，而不必用创造模式取用。Mekanism 配置项控制的是这些 feature **是否运行**，因为两个 placed feature 的首个修饰符都是 `mekanism:disableable`。对老世界有一点需要注意：`retro_gen` 为 `false`，所以**已生成的区块里没有银矿**，需要新生成的地形。完整细节见[首页](index)。

银线覆盖粗银、银碎块、银晶体、污浊银粉、银粉、银碎片、银锭、银粒、富集银、银块、粗银块，以及化学处理路径所需的污浊/纯净银泥浆。常见标签（`c:ores/silver`、`c:ingots/silver`、`c:dusts/silver` 等）已注册，便于自动化。

## 机器系列

- 回收：回收机（`mekmm:recycler`）是单输入机器，当存在回收配方时销毁不需要的物品。
- 种植：种植站（`mekmm:planting_station`）以化学物（气体）输入培育作物，带二级输出槽；生成数据包含作物、花朵与树苗的种植配方。
- CNC 系列：CNC 冲压机（双输入）、CNC 车床与 CNC 轧机处理物品到物品配方。
- 压制：压机（`mekmm:presser`）把三种输入压缩为一种输出。
- 复制：复制机家族（物品/流体/化学复制机）以 UU物质复制资源；配方来自模组注册的数据映射，以及 `general.item_replicator.recipes` / `fluid_replicator.recipes` / `chemical_replicator.recipes` 配置列表（条目写作 `modid:名称#数量`）。
- 环境收集：环境气体收集器（`mekmm:ambient_gas_collector`）从大气中提取不稳定维度气体；不要在机器上方放置方块。
- 无线：无线充能站（`mekmm:wireless_charging_station`）绑定一名玩家，可无线为其装备、背包与（启用时）Curios 槽充能；无线传输站（`mekmm:wireless_transmission_station`）通过连接器（`mekmm:connector`）连接两座站点，可传输能量、流体、化学物、物品与热量。连接仅限同一维度。

## 工厂

七种核心机型（回收、种植、冲压、车削、轧制、压制、复制）都拥有 `<等级>_<类型>_factory` 命名的基础/高级/精英/终极工厂，按等级并行处理多份输入。更多 Mekanism 处理链的工厂变体来自高级工厂与大型机器模块。

## 合成与配方查看器

每个新机器都有生成于 `data/mekmm/recipe/` 的合成配方（例如 `mekmm:recycler` 需要粉碎机、高级电路/合金与锇锭），工厂、储罐与大型机器配方同样已生成。请在游戏中打开 JEI 查看准确的原料组合；模组也为自定义处理配方注册了 JEI 分类。

[返回首页](index)