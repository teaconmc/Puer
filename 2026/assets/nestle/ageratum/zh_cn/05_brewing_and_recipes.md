---
title: "酿造与配方"
navigation:
  title: "05 酿造与配方"
---

# 酿造与配方

## 酿造链

当前源码以**浓稠药水**而不是粗制药水为入口：

1. 浓稠药水 + 贴贴物品 -> 贴贴药水，持续 `5` 秒。
2. 贴贴药水 + 黏液球 -> 渴望贴贴药水，持续 `5` 秒。
3. 贴贴药水 + 仙人掌 -> 贴贴抗性药水，持续 `3` 分钟。
4. 贴贴抗性药水 + 红石 -> 延长版贴贴抗性药水，持续 `8` 分钟。
5. 贴贴药水 + 腐肉 -> 厌恶贴贴药水，持续 `3` 分钟。
6. 厌恶贴贴药水 + 红石 -> 延长版厌恶贴贴药水，持续 `8` 分钟。

::: warning
旧说明若写成粗制药水或其他产量，请以这里列出的注册代码为准。酿造配方不是工作台配方，因此不使用下方的配方组件展示。
:::

## 基础物品

<recipe id="nestle:nestle"/>

<recipe id="nestle:nestle_compass"/>

<recipe id="nestle:nestle_lead"/>

<recipe id="nestle:nestle_bound"/>

## 功能方块

<recipe id="nestle:nestle_block"/>

<recipe id="nestle:nestle_resistance_block"/>

## 清除绑定

把一个贴贴绑定单独放入合成栏，会产出不带绑定数据的新物品。数据生成器把这份真实配方写入了 `minecraft` 命名空间：

<recipe id="minecraft:unbind_nestle_bound"/>

这不是拼写错误；当前资源路径确实是 `data/minecraft/recipe/unbind_nestle_bound.json`。

[返回贴贴目录](index)
