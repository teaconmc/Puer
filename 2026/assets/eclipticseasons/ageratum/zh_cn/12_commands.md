---
title: "命令"
navigation:
  title: "12 命令"
---

# 命令

模组按模组 ID（`eclipticseasons`）注册一个命令根。除普通太阳历读数外，所有子命令都需要游戏管理员权限（2）。

## `/eclipticseasons debug`

- `debug reset surface_biome_cache [pos]` —— 重建群系地表缓存，可选指定一个已加载方块位置。
- `debug ...` 仅限游戏管理员。

## `/eclipticseasons solar`

- `solar set <day>` —— 设置节气日并同步到世界。
- `solar add <day>` —— 在当前节气日上增加天数。
- `solar get` —— 打印当前节气日。
- `solar setTerm <term> [find_next]` —— 按英文名跳到指定节气；传 `true` 时跳到下一次出现，而不是从第 0 年开始。
- `solar getTerm` —— 打印当前节气。
- `solar getSeasonSignal` —— 打印执行实体位置的季节信号。
- `solar getSubSeason` —— 打印当前季段。
- `solar getMonth` —— 打印公历月份。
- `solar getSpecialDay` —— 打印当前节日注册键（若有）。
- `solar setSnowTempChange <tempChange>` / `solar getSnowTempChange` —— 设置或读取 `[-0.25, 0.25]` 内的雪温度修正。

## `/eclipticseasons weather <biome>`

- `weather <biome> rain [effect]` —— 对匹配群系强制降雨（`thunder` 为雷暴）；可选 `effect` 是 `WEATHER_EFFECT` 注册表键。
- `weather <biome> clear` —— 清除强制降雨。
- `weather <biome> snow_depth <0..100>` —— 设置群系雪深。
- `weather <biome> effect clear|<effect>` —— 设置或清除天气效果。

## `/eclipticseasons export`

- `export biome_map <pos>` —— 在已加载位置导出群系/雪地图。
- `export humid_charts <namespace>` —— 把命名空间内所有群系的湿度图导出到 `eclipticseasons/humid/<namespace>`。

::: warning
`debug` 与 `weather` 会检查或修改服务端季节状态。它们已按权限限制在游戏管理员，但共享服务器若需要更细粒度控制，仍可能需要权限模组。
:::

[返回首页](index)
