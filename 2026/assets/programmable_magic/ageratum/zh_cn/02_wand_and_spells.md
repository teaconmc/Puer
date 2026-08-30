---
title: 法杖与咒语
navigation:
  title: 法杖与咒语
---

# 法杖与咒语

## 法杖 GUI

`wand_menu` 界面（`WandScreen`，含 `WandSlots` / `WandWidgets`）用于编排程序。它由 `WandPluginRegistry` 注册的插件驱动：

- **`SpellStoragePlugin`** —— 在法杖中存储咒语 token。
- **`SpellSupplyPlugin`** —— 从供应方喂入咒语。
- **`SpellReleasePlugin`** —— 释放/充能编排好的程序。
- **`SpellPackerPlugin`** —— 把组合打包为 `packed_spell`。
- **`ColorThemePlugin`** —— 修改法杖配色主题。

提示文本（`ItemTooltipHandler`）与自动充能 HUD（`WandAutoChargeHud`）辅助玩家。

## 施法

释放后，编排好的程序在世界中运行；实际效果以 **`spell_entity`** 弹射物（0.5×0.5、`MobCategory.MISC`、追踪 64、更新间隔 1）传播。`SpellEntity` 与专属 `spell_entity` ticket controller 保持施法区块加载。

[返回首页](index)