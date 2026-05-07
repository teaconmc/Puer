---
title: 获取开始
navigation:
  title: 获取开始
---

# 获取开始

MTR-NTE 的内容被并入既有的 MTR 创造页：`eye_candy` 位于车站建筑方块页，`one_way_gate_1` 位于铁路设施页，三件工具（`bridge_creator_1`、`rail_editor_visual`、`rail_editor_geometry`）位于 MTR 核心页。

## 装饰物件

`eye_candy` 方块渲染由 eye-candy 脚本定义的装饰物件，是一个完整的方块实体容器；blockstate 与物品模型位于 `assets/mtrsteamloco`。Eye-candy 文件放在资源包的 `assets/mtrsteamloco/eyecandies/` 下（模组自带示例 `teapot.json`）。该方块默认始终以满光渲染（`gui.mtrsteamloco.eye_candy.full_light`），资源包作者可在此定义自己的物件。

## 单向闸机

`one_way_gate_1` 是铁路设施闸机，允许单向通行，适合与 MTR 闸机搭配布置车站检票流线。

## 铃铛

注册了一个车站铃声音效（`mtrsteamloco:bell`）；与首发铃铛方块 `mtrsteamloco:departure_bell` 搭配使用。

## 客户端配置

`/mtrnte config` 命令打开 NTE 客户端配置界面（不提供服务端配置；配置存放在客户端，例如由 `/mtrnte hideriding` 切换的 `ClientConfig.hideRidingTrain`）。

[返回首页](index)