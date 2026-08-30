---
title: 弹药包与背包
navigation:
  title: 弹药包与背包
---

# 弹药包与背包

模组核心主题：把你自己（或装备）转化为**弹药包（cartridge）**。

## 背包

**`backpack`** 是可穿戴的储物物品。它有自己的 HUD（`BackpackHud`）、渲染器与菜单（`BackpackMenu` / `BackpackScreen`），可通过按键绑定打开。

## 手术台

**`surgery_table`**（同 ID 方块实体，铁块声效）是把你背包转化为弹药包的地方，使用 `surgery_table_menu`。手术过程涉及 `CartridgeCreationRequestPacket` / `CartridgeConfirmRequestPacket` 等数据包与确认界面。

## 弹药包

**`cartridge`** 是转化后的物品，`CartridgeEntity`（0×0、防火、无战利品/不可召唤）是世界内形态。`CartridgeManager` 与 `CartridgeHandler` 追踪玩家弹药包；`BecomeCartridgePacket` / `EjectCartridgePacket` / `CartridgeUsePacket` 处理状态，自定义 `CartridgeDeathMessageProvider` 给出深渊主题死亡信息。

## 创造标签

所有物品都位于 **`cartridge`** 创造标签（图标：`cartridge`）。

[返回首页](index)