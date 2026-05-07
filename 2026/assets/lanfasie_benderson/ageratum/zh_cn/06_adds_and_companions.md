---
title: 增援与同伴
navigation:
  title: 增援与同伴
description: 五名不获宽恕者、三名尘世歌颂者、兰法斯、晨曦以及各种标记实体。
---

# 增援与同伴

除首领之外，模组共注册 14 个实体类型。它们**全部没有战利品表**。

## 不获宽恕者（负罪灵）

五个敌对的 `MONSTER` 增援，每个都在创造页中有对应刷怪蛋。它们在召唤时以禁用 AI 的状态生成（见[开启战斗](02_starting_the_fight.md)），并统一被 `sin_bearer`（「负罪灵」）实体标签涵盖。

| 实体 | 名称 | 尺寸（宽 x 高） | 眼高 |
|:---|:---|:---|:---|
| `unforgiven_spoiling` | 不获宽恕的溺爱 | 0.8 x 1.5 | 1.2 |
| `unforgiven_ridicule` | 不获宽恕的嘲弄 | 0.6 x 1.8 | 0.6 |
| `unforgiven_perfidy` | 不获宽恕的背义 | 0.5 x 1.6 | 1.45 |
| `unforgiven_cowardice` | 不获宽恕的怯弱 | 0.65 x 0.625 | 默认 |
| `unforgiven_indiscretion` | 不获宽恕的失言 | 0.6 x 2.8 | 2.5 |

`unforgiven_indiscretion` 会向附近实体广播；标签 `ignore_unforgiven_indiscretion_broadcast`（「无视来自不获宽恕的失言的广播」）可让实体类型免于该广播。

## 尘世歌颂者

三个 `CREATURE` 同伴，均免火、尺寸 0.6 x 2.125、免疫凋灵玫瑰、追踪距离 8：

- `mundane_praiser_bard` —— 尘世歌颂者吟游诗人
- `mundane_praiser_white_mage` —— 尘世歌颂者白魔术师
- `mundane_praiser_red_mage` —— 尘世歌颂者赤魔术师

他们与[武器与装备](07_weapons_and_equipment.md)中的尘世歌颂者武器套装相对应，其中吟游诗人是**歌尘三重唱**系列效果的来源：

| 效果 id | 名称 | 类别 |
|:---|:---|:---|
| `mundane_trio` | 歌尘三重唱 | 中性 |
| `opening_minuet` | 开场的小步舞曲（歌尘三重唱） | 有益，施加时播放自己的音效 |
| `twin_ballad` | 孪生的叙事谣（歌尘三重唱） | 有益，施加时播放自己的音效 |
| `beloved_paean` | 受爱戴者的赞美歌（歌尘三重唱） | 有益，施加时播放自己的音效 |

`summer_septet`（「夏日七重天」）是同一系列中的另一个中性效果。

## 兰法斯与晨曦

- `lanfasie_phantom` —— 「魅影兰法斯」。`CREATURE`，免火，0.6 x 1.8，可在远离玩家处生成，追踪距离 12。
- `dawn` —— 「晨曦」。`CREATURE`，免火，0.6 x 2.375，免疫凋灵玫瑰，追踪距离 8。与 `sword_of_dawnwaiter` 和 `dawnwaiter_totem` 配套。

## 本德森及其投影

- `benderson` —— 「坠渊候晨的本德森」。`MONSTER`，免火，0.6 x 2.375，免疫凋灵玫瑰，追踪距离 12。它有三个备用显示名：「深潜空域的团魂」（`deep_latent`）、「得到宽恕的团魂」（`forgiven`）与「不获宽恕的团魂」（`unforgiven`）。
- `projected_benderson` —— 「坠渊候晨的本德森 (投影)」。`MISC`，**不存档**、**不可召唤**，供 ProjectMe 集成使用；其名称会带上后缀 `«投影»`。参见[兼容性](10_compatibility.md)。

## 标记

- `target_marker` —— 「目标标记」。尺寸 0 x 0，追踪距离 16。
- `delayed_attack_marker` —— 「延迟攻击标记」。尺寸 0 x 0，追踪距离 12。

两者都是尺寸为零的隐形辅助实体，用于在地面渲染预兆。

## 清场免疫

标签 `immune_benderson_wipe_arena`（「免疫本德森清扫场地攻击」）可让实体类型免于清扫竞技场的攻击。

[返回首页](index)
