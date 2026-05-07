---
title: "世界生成与树包"
navigation:
  title: "10 世界生成与树包"
---

# 世界生成与树包

动态的树用自有的世界生成特性（`dynamictrees:tree`，以及 `dynamictrees:cave_rooted_tree`）取代原版树木生成，完全由资源数据驱动。

## 生物群系映射

`trees/dynamictrees/world_gen/default.json` 把生物群系映射到动态树种。已确认的映射包括：

| 生物群系家族 | 选择 |
|:---|:---|
| 森林 | 橡树 4 : 白桦 1 |
| 丛林 | 丛林 15 : 巨型丛林 3 : 可可 1 |
| 沼泽 | 沼泽橡（可在水中生长） |
| 红树林沼泽 | 红树 |
| 热带草原 | 金合欢 |
| 樱花林 | 樱花 |
| 针叶林生物群系 | 云杉（适用处还有高大白桦） |
| 深暗之森 | 深色橡 |
| 苍白花园 | 苍白橡 |
| 绯红森林 / 诡异森林 | 常规 : 巨型 4 : 1 |

映射器是数据驱动的：树包可以新增生物群系选择或覆盖现有选择。

## 特性取消

`trees/dynamictrees/world_gen/feature_cancellers.json` 会移除会与动态树冲突的原版树木生成：

- 主世界的树特性（Minecraft `tree` 特性）被取消，改由动态树生成。
- 繁茂洞穴中的 `rooted_tree` 特性被取消，改用洞穴根源杜鹃特性。
- 下界森林生物群系中的原版巨型菌类被取消，改由动态绯红/诡异菌生成。

村庄树木也可以被替换（`cancelVanillaVillageTrees`，默认 `true`）；菌岩上的下界菌索默认会被替换（`replaceNyliumFungi`，默认 `true`）。

## 洞穴根源杜鹃

`cave_rooted_tree` 特性会在繁茂洞穴下方长出根系系统；杜鹃树种利用气生根从洞穴顶向下延伸。

## 世界生成配置

- `worldGen`（默认 `true`）全局开关动态世界生成。
- `dimensionBlacklist`（默认空）列出禁用动态树生成的维度 ID。
- `sampleNoiseBiome`（默认 `true`）使用基于噪声的生物群系采样来决定放置。

## 树包

这一切都是数据：`trees/dynamictrees/` 保存树种、家族、树叶、土壤、果实、豆荚与世界生成数据。树包可以自带 `trees/<pack>/` 数据来新增树种或覆盖基础内容；动态种子物品、法杖树种与药剂目标都通过这些注册表在运行时解析。

[返回动态的树首页](index)