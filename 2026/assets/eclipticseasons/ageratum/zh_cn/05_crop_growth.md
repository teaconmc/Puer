---
title: "作物生长控制"
navigation:
  title: "05 作物生长控制"
---

# 作物生长控制

作物系统让植物生长依赖当前节气与局部湿度，而不是始终按原版速率推进。

## 作物数据

模组通过 `CropGrowControlBuilder` 注册数据包注册表 `eclipticseasons:crop`。生成数据为许多原版作物提供季节与湿度偏好条目，并以标签分组：

- 季节标签：`#eclipticseasons:crops/spring`、`#eclipticseasons:crops/summer`、`#eclipticseasons:crops/autumn`、`#eclipticseasons:crops/winter`，以及 `spring_summer`、`all_seasons` 等组合标签。
- 湿度标签：`arid`、`dry`、`average`、`moist`、`humid`，以及 `arid_average` 等组合名。
- `unaffected_by_season` 与 `not_killed_by_season` 标签定义忽略季节或能撑过不利季节的植物。

处理器还知道群系农业气候区（`cold`、`temperate`、`hot`、`nether`、`end`），来自 `eclipticseasons:agro_climatic_zone`。

## 概率如何计算

每次随机 tick，`CropGrowthHandler` 都会乘算季节生长概率与湿度生长概率：

- 季节概率来自按当前节气选出的 `GrowParameter`。
- 湿度概率把环境湿度夹进作物的偏好曲线。
- 植物处正在下雨可增加一个湿度档。
- 有效的温室房间可阻止季节判定失败并让湿度门槛通过（`simpleGreenHouse` 模式），或先把房间湿度修正加到环境中再进行作物湿度检查（非 simple 模式）。

## 你能观察到什么

对受支持的作物使用[生长检测器](04_measurement_tools)，可看到上述哪些因素在拖慢生长。消息会包含气候区、温室房间状态、偏好季节、偏好湿度与估算生长概率。

::: note
数据包条目才是事实来源。如果整合包覆盖 `eclipticseasons:crop/*`，同一处理器会应用新偏好；本页只记录内置行为。
:::

[返回首页](index)
