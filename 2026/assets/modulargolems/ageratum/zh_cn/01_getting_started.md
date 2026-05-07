---
title: 获取开始
navigation:
  title: 获取开始
---

# 获取开始

## 从模板开始

第一个进度（`start`）要求你合成一个傀儡模板，并用切石机将其切割成傀儡零件。合成配方 `metal_golem_template` 与切石机转换配方（例如 `metal_golem_body_from_metal_golem_template_stonecutting`）覆盖金属、人形与犬形三套零件。

## 各类型所需零件

每种傀儡需要特定零件：

- **金属傀儡** —— 躯干、左右与腿零件。
- **人形傀儡** —— 躯干、手臂与腿。
- **犬形傀儡** —— 躯干与腿。

## 组装傀儡

使用 `golem_workbench` 组合零件；合成结果是傀儡容器，放置出对应的傀儡实体（`modulargolems:metal_golem`、`humanoid_golem` 或 `dog_golem`）。

## 材料与扩充

傀儡材料按已注册材料分别定义。生成的材料配置（`modulargolems:vanilla`）内置铜、铁、金、下界合金与幽匿，各有独立的属性与修饰符配置。当前 26.1 分支的第三方材料分发全部被注释禁用，因此没有可用的外部材料包（植物魔法、ATM 等）；配置系统本身仍可通过数据扩展。

## 升级

傀儡接受 `modifier.modulargolems.*` 升级，可添加诸如火球（`blazing`）、基于魔力的治疗（`mana_mending`）或区域效果。升级槽位可通过 `add_slot_*` 修饰符扩充；`max` 进度要求在同一傀儡上安装 12 个升级，`full` 要求用尽所有槽位。

## 命令、召唤与回收手杖

- **命令手杖** —— 指挥傀儡行动。
- **召唤手杖** —— 召唤已存放的傀儡（`summon_mass` 进度需一次至少召唤 24 只）。
- **回收手杖** —— 回收你的傀儡。

## 修复

金属傀儡可以用锭直接修复（`hot_fix` 进度）或在铁砧中修复（`anvil_fix` 进度）。

[返回首页](index)