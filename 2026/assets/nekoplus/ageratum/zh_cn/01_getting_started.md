---
title: "开始使用"
navigation:
  title: "01 开始使用"
items:
  - "nekoplus:titanium_alloy_ingot"
---

# 开始使用

NekoPLUS! 需要铁砧工艺 1.5.0 或更高版本。所有内容都建立在铁砧工艺的方块、机器与配方之上。

## 创造栏

模组注册了创造栏 `itemGroup.nekoplus.tab`，图标为高能激光。NekoPLUS! 的所有物品与方块都在其中。

## 钛合金材料

基础材料链包括：

- `nekoplus:titanium_alloy_ingot`
- `nekoplus:titanium_alloy_nugget`（由锭合成）
- `nekoplus:titanium_alloy_block`（存储方块，含常规的互相转换）
- `nekoplus:titanium_alloy_anvil`

钛合金锭本身由铁砧工艺的超级加热配方生产：

<recipe id="nekoplus:titanium_alloy_ingot_superheating"/>

`#c:ingots/titanium` 标签中的 1 个材料加上 1 个铁锭，产出 2 个钛合金锭。

## 增强模块

模组注册了基础物品与一组增强模块，保存在 `nekoplus:enhancement_module` 数据组件中：

- `nekoplus:enhancement_module_base`
- `nekoplus:titanium_crystal_module`
- `nekoplus:hologram_projector_module`
- `nekoplus:mechanical_heart_module`
- `nekoplus:exoskeletal_leg_frame_module`

## 机器与方块

以下注册方块均带有模组生成的配方：

- `nekoplus:battery` 与 `nekoplus:huge_battery`
- `nekoplus:particle_stabilizer`
- `nekoplus:high_energy_laser`
- `nekoplus:shulker_hatch`
- `nekoplus:programmable_logic_gate`
- `nekoplus:blast_crystal`（含 `cracked` 与 `damaged` 变体）
- `nekoplus:stellar_engine` 与 `nekoplus:tardis` 多块结构

## 配置与命令

模组注册了通用配置与客户端检查命令。细节将在对应专题页发布后展开。

[返回首页](index)