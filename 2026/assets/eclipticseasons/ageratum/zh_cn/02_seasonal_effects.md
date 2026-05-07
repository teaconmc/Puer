---
title: "季节对世界的影响"
navigation:
  title: "02 季节对世界的影响"
---

# 季节对世界的影响

节气驱动一套以 **温度**、**降雨**、**湿度** 三个主要档位为核心的环境模型。这些档位会感知群系，并被多个子系统在每次 tick 中消费。

## 温度与中暑

`Temperature` 模型把当前节气与群系映射成从 `FREEZING` / `UNDER_FREEZING` 到 `WARM` / `HOT` 再到 `OVER_HEAT` 的状态。模组注册了一个状态效果 `eclipticseasons:heat_stroke`（中暑 / heat stroke）。`HeatStrokeTicker` 会在炎热环境中应用该效果；图标与名称随模组打包，其他防热装备可通过标签（如 `#eclipticseasons:heat_protective_helmets` 等）分配。

::: warning
`heat_stroke` 是真实注册的效果，但生存模式的应对手段取决于整合包配置。请勿假定本页有任何固定伤害曲线——注册数据里没有固定的饥饿或伤害日程。
:::

## 降雨模式

降雨由 `BiomeRain` 注册表及其 `CustomRain` 构建器表示。默认世界包含多种群系降雨模式：

- `eclipticseasons:rainy` —— 普通多雨群系。
- `eclipticseasons:arid` / `droughty` —— 少雨的干燥群系。
- `eclipticseasons:monsoonal` —— 明显的雨季与旱季循环。
- `eclipticseasons:seasonal` —— 只在某些季节下雨。
- `eclipticseasons:soft` / `rainless` —— 减少降雨或无降雨。

天气管理器（`WeatherManager`）按节气与群系逐项应用这些模式，客户端使用 `assets/eclipticseasons/textures/environment/` 下的雨雪纹理渲染。

## 湿度

湿度被采样为浮点数值，并归类为 `ARID`、`DRY`、`AVERAGE`、`MOIST`、`HUMID`。数值来自群系气候设置与附近的湿度调节方块；作物生长处理器会与温度分开消费湿度。

## 植物与动物

模组注册了多个供季节处理器使用的方块/物品标签：

- `#eclipticseasons:natural_plants`、`#eclipticseasons:volatile_plants` —— 季节随机 tick 系统可能作用的植物。
- `#eclipticseasons:crops/*` —— 作物季节/湿度偏好标签。
- `#eclipticseasons:breed/*` 实体类型标签 —— 动物繁殖季节。
- `#eclipticseasons:habitat/*` 方块标签 —— 环境生物栖息地提示。

季节模型还会通过客户端颜色/模型定义替换树叶、草与覆雪外观，并可播放季节环境音效（`ambient.spring_forest`、`ambient.garden_wind`、`ambient.night_river`、`ambient.windy_leave`、`ambient.winter_forest`、`ambient.winter_cold`）。

[返回首页](index)
