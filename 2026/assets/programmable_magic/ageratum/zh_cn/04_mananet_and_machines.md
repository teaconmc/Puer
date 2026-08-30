---
title: 魔力网络与机器
navigation:
  title: 魔力网络与机器
---

# 魔力网络与机器

## 魔力网络

`NetworkManaManager` 运行模组的电网，按网络存储在 `NetworkManaData` 中。**`basic_mana_connector`** 是加入网络并在机器与法杖间路由魔力的节点方块（方块实体 `basic_mana_connector`）；`NetNodeBlockEntity` 是共享节点基类。

## 机器

- **`solar_panel`** —— 从日光产生魔力（`SolarPanel` / `SolarPanelBlockEntity`，`solar_panel_menu`）。
- **`wind_turbine`** —— 从风产生魔力（`WindTurbine`、`WindTurbineBlockEntity`、`machine_menu`）。
- **`dummy_block`** —— 占位机器方块（`DummyBlock`）。

`BasicMachine` 是机器行为基类；`BasicMachineReachHandler` / `BasicMachinePlacementPreview` / `BasicMachineItemHelper` 协助放置与预览机器（`BasicMachinePlacementPreview`）。

## 命令与 JEI

- **`/prm`**（`PrmCommand`，经 `CommandHandler`）—— 模组管理命令。
- **JEI** —— `JEIPlugin` 展示配方与咒语用法。
- **数据生成** —— `ModDataGenerators`、`GeneralItemModelProvider`、`SpellItemModelProvider`、`WandPluginItemModelProvider`。

[返回首页](index)