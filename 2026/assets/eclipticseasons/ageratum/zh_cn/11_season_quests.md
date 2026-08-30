---
title: "季节任务"
navigation:
  title: "11 季节任务"
---

# 季节任务

季节任务系统结合了注册的任务告示牌、数据包任务注册表、进度、节日日期与一张唱片奖励。

## 任务告示牌

`eclipticseasons:season_quest_ceiling_hanging_sign` 与 `eclipticseasons:season_quest_wall_hanging_sign` 是带 `season_quest_hanging_sign` 方块实体的吊挂告示牌。它们显示 `eclipticseasons:season_quest` 数据包注册表中定义的任务。

`eclipticseasons:seasonal_prayer_scroll` 注册为与这些告示牌互动的设计意图物品，但当前检出的源码里 `tryApplyToSign` 实现已被注释掉。该物品目前只有配方与工具提示，尚不能更改告示牌的任务。

<recipe id="eclipticseasons:seasonal_prayer_scroll"/>

- 任意种子（`#c:seeds`）+ 纸 → 1 祈年卷

## 任务注册表内容

生成注册表包含四个核心任务（`spring_core`、`summer_core`、`autumn_core`、`winter_core`）。每个任务都有开始节气、结束节气、请求物品与数量、奖励。例如 `spring_core` 从春分持续到立夏，请求 **192 个小麦**，奖励 `spring_greenhouse_essence`。其余核心分别奖励 `summer_greenhouse_essence`、`autumn_greenhouse_essence` 与 `winter_greenhouse_essence`。

## 进度

进度树生成在 `eclipticseasons:main` 下：

- `main/base` —— tick 即自动获得（不弹提示）。
- `main/root` —— 通过 `eclipticseasons:solar_terms` 自定义触发器获得；奖励 `eclipticseasons:gifts/snowless_hometown`。
- `main/quest` —— 连接季节任务分支。
- `main/greenhouse_core`、`main/seasonal_prayer_scroll`、`main/seasonal_ritual`、`main/humidity_tank`、`main/dehumidifier`、`main/green_house` 与 `main/heat_stroke` —— 基于物品/使用的里程碑。

每个季节还会在 `eclipticseasons:quests` 下生成任务分支，包含开始、种子、收获与主题任务进度（面包、干草、南瓜派、闪烁的西瓜、营火、蛋糕、牛奶、地毯等）。

## 节日

`eclipticseasons:special_days` 数据包注册表在日历上标记节日：`spring_festival`、`new_year`、`flower_festival`、`spring_outing`、`chinese_valentines_day`、`mid_autumn`、`easter` 与 `christmas`。每个条目指向一个节气与结束偏移。

## 唱片

`eclipticseasons:snowless_hometown` 是注册的唱片机可播放唱片（`eclipticseasons:jukebox_song/snowless_hometown`），礼物战利品表为 `eclipticseasons:gifts/snowless_hometown`，由根进度使用。

[返回首页](index)
