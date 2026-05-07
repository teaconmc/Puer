---
title: "季节传感器"
navigation:
  title: "09 季节传感器"
---

# 季节传感器

`eclipticseasons:season_sensor` 是根据当前季节输出红石数值的方块。它没有方块实体，所有状态都存在方块状态属性中。

## 合成

<recipe id="eclipticseasons:season_sensor"/>

- 铜锭、玻璃、时钟、红石粉、木板 → 1 季节传感器

## 操作

- **不潜行右键** 循环手动选择的季节（`SEASON`），并在聊天栏显示所选季节。
- **潜行右键** 在 `AUTO` 与 `ON_SIGNAL` 的四种组合（手动或自动、自然或信号源）之间循环模式。
- 在 `AUTO` 模式下，传感器自动跟随世界季节，并忽略手动点击。

## 信号行为

方块有 `POWER` 属性（0–15）并作为红石信号源。

- **信号模式**（`ON_SIGNAL=true`）：从最近的温室之心（`GreenHouseCoreBlockEntity.getCurrentSeason`）读取数值。如果传感器所选季节与核心季节相同，就输出核心的数值；否则输出 0。
- **自然模式**（`ON_SIGNAL=false`）：当所选季节与世界季节相同，按当前节气推导数值；否则输出 0。

传感器在放置时与随机 tick 时更新，因此红石电路无需常开时钟即可追踪季节变化。

[返回首页](index)
