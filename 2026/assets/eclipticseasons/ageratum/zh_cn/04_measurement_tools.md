---
title: "测量工具"
navigation:
  title: "04 测量工具"
---

# 测量工具

Ecliptic Seasons 提供三件手持测量仪与一件检测物品，用于读取你所在位置的环境。

## 湿度计（方块物品）

注册的 `eclipticseasons:hygrometer` 是湿度计方块的方块物品。使用后会把当前湿度分类（`ARID`、`DRY`、`AVERAGE`、`MOIST` 或 `HUMID`）发送到聊天栏。合成：

<recipe id="eclipticseasons:hygrometer"/>

- 方解石、玻璃板、紫水晶、铜锭与红石粉
- → 1 湿度计

## 雨量计与温度计

`eclipticseasons:hyetometer` 报告玩家位置当前的降雨档位。`eclipticseasons:thermometer` 报告当前温度档位。两者都是手持物品：

<recipe id="eclipticseasons:hyetometer"/>

- 红石粉、玻璃瓶、铜锭 → 雨量计

<recipe id="eclipticseasons:thermometer"/>

- 红石粉 + 水瓶（Water Potion）→ 温度计

::: note
创造模式标签页当前会隐藏两件手持测量仪（`hyetometer` 与 `thermometer` 被 `displayItems` 跳过），所以生存合成或 `/give` 才是正常获取方式。
:::

## 生长检测器

`eclipticseasons:growth_detector` 对植物使用时检查目标方块，并报告当前生长环境：农业气候区、温室房间状态与估算生长概率。

<recipe id="eclipticseasons:growth_detector"/>

- 玻璃板、玻璃块、木棍 → 生长检测器

检测器只在 `growthDetectorClassicMode` 开启、且目标方块在 `CropGrowthHandler` 中有作物控制条目时报告。它不会改变植物。

[返回首页](index)
