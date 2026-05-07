---
title: "湿度调节方块"
navigation:
  title: "08 湿度调节方块"
---

# 湿度调节方块

湿度调节器注册为恒湿水缸与温室除湿器共用的方块实体（`eclipticseasons:humidity_modifier`）。它们会改变周围作物生长与测量仪读数看到的湿度。

## 恒湿水缸

`eclipticseasons:humidity_tank` 在配置的 `humidityTankRange` 半径内提供 `0.75` 的湿度修正。它在服务端 tick，随机 tick 保留给耕地湿润逻辑；方块还会播放滴水粒子动画。

<recipe id="eclipticseasons:humidity_tank"/>

- 木板、水桶、铁锭、木质台阶 → 1 恒湿水缸

## 温室除湿器

`eclipticseasons:dehumidifier` 是相反的修正器：降低作用范围内的湿度。合成：

<recipe id="eclipticseasons:dehumidifier"/>

- 干草块、木质台阶、木板、铁粒 → 1 温室除湿器

## 格栅加湿器

铜格栅家族把原版铜/木格栅转换成湿度修正方块。注册 ID：

- `block_in_copper_grate_block`、`block_in_exposed_copper_grate_block`、`block_in_weathered_copper_grate_block`、`block_in_oxidized_copper_grate_block`
- `waxed_block_in_copper_grate_block`、`waxed_block_in_exposed_copper_grate_block`、`waxed_block_in_weathered_copper_grate_block`、`waxed_block_in_oxidized_copper_grate_block`
- `block_in_wooden_grate_block`

方块实体（`block_in_copper_grate_block`）暴露物品处理器；方块的设计意图是把正确的格栅物品放入其中完成转换。木质变体有自己的配方：

<recipe id="eclipticseasons:block_in_wooden_grate_block"/>

- 4 原木（任意 `#minecraft:logs`）→ 4 木格栅加湿器

::: note
铜格栅转换由数据映射驱动：`neoforge:data_maps/block/oxidizables.json` 与 `waxables.json` 把这些方块连接到原版氧化/涂蜡状态。风化沿与原版相同的铜氧化路径进行。
:::

[返回首页](index)
