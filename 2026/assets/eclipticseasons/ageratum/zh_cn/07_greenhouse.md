---
title: "温室之心"
navigation:
  title: "07 温室之心"
---

# 温室之心

温室系统让你建造一个能保护作物免受某一季节影响的房间。它由四个季节核心、一个可复用容器与季节心髓组成。

## 容器与心髓

`eclipticseasons:greenhouse_core_container` 是空框架。四个心髓注册为 `spring_greenhouse_essence`、`summer_greenhouse_essence`、`autumn_greenhouse_essence` 与 `winter_greenhouse_essence`。

<recipe id="eclipticseasons:greenhouse_core_container"/>

- 遮光玻璃（`#c:glass_blocks/tinted`）与铜锭 → 1 温室之心容器

每个核心都是由对应心髓加容器组成的无序合成：

<recipe id="eclipticseasons:spring_greenhouse_core"/>
<recipe id="eclipticseasons:summer_greenhouse_core"/>
<recipe id="eclipticseasons:autumn_greenhouse_core"/>
<recipe id="eclipticseasons:winter_greenhouse_core"/>

## 核心行为

季节核心是追踪自身季节（`Season.SPRING` / `SUMMER` / `AUTUMN` / `WINTER`）、`AGE` 阶段（0–3）与红石 `SEASON_ON` 数值的方块实体。

- 只有核心处于最大 `AGE` 时，`getSignal` 才输出 `SEASON_ON`；否则输出 0。
- 方块作为 `CropGrowthHandler` 房间检查的来源，可把房间内降低的作物生长概率恢复。
- 满阶时，核心在房间内发射 `eclipticseasons:greenhouse` 粒子。低阶且季节信号与自身季节相同时，改为在核心附近发射 `eclipticseasons:flying_bloom` 粒子。

潜行并使用处于最大 `AGE` 的核心可取出心髓，把方块变回 `greenhouse_core_container`，并掉落对应的心髓物品。

## 如何获得心髓

心髓是任务奖励与礼物战利品表条目。生成战利品表为 `eclipticseasons:gifts/spring_greenhouse_essence`、`eclipticseasons:gifts/summer_greenhouse_essence`、`eclipticseasons:gifts/autumn_greenhouse_essence` 与 `eclipticseasons:gifts/winter_greenhouse_essence`。心髓本身没有普通世界箱子或合成配方；见[季节任务](11_season_quests)。

[返回首页](index)
