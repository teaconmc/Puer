---
title: "动态的树（Dynamic Trees）"
navigation:
  title: "动态的树（Dynamic Trees）"
---

# 动态的树（Dynamic Trees）

Dynamic Trees（`dynamictrees`）用「会生长的大树」取代原版从树苗到固定模板的静态生长方式。每棵树都从一颗种子开始，作为由树枝与树叶组成的连通网络持续生长：树干加粗并逐渐变细、枝条按物种特征延展、树冠随光照与水分扩张或收缩、整片森林会随时间自行更新并掉落种子。模组同时支持 NeoForge 与 Fabric，且几乎完全由数据驱动——树种、生长逻辑、土壤、果实、豆荚与世界生成都以资源数据定义，其他树包可以扩展这些内容。

## 阅读路线

1. [快速上手](01_getting_started)：种子、种植、泥土桶与你的第一棵动态树。
2. [生长机制](02_growth_mechanics)：生长脉冲、枝条网络、叶子的光照与水分、腐烂与障碍。
3. [根系土壤与肥力](03_rooty_soil_and_fertility)：土壤转化、0–15 肥力条与施肥。
4. [采伐与倒树](04_harvesting_and_falling_trees)：砍伐、倒树实体、伤害与掉落。
5. [树种与树形](05_species_and_tree_forms)：基础模组自带的树种。
6. [果实与豆荚](06_fruits_and_pods)：苹果、可可豆荚与果实/豆荚生长。
7. [巨型树与下界菌类](07_mega_trees_and_nether_fungi)：巨型树种、巨型种子与绯红/诡异菌。
8. [林木药剂](08_dendro_potions)：酿造链与四种活跃药剂。
9. [林地法杖与 JoCode](09_woodland_staff_and_jocodes)：捕捉、保存与放置树形。
10. [世界生成与树包](10_world_generation_and_treepacks)：生物群系映射、特性取消与数据驱动的扩展。
11. [命令](11_commands)：`/dt` 命令树。
12. [配置与兼容](12_configuration_and_compatibility)：服务端配置要点与模组边界。

## 快速说明

| 项目 | 当前实现 |
|:---|:---|
| 模组 ID | `dynamictrees` |
| 版本 | 面向 Minecraft `26.1.2`（Java 25）的 `1.8.0-BETA03`，支持 NeoForge 与 Fabric |
| 基础方块 | 动态树枝与去皮树枝、动态树叶、动态树苗、各类根系土壤、树根、`trunk_shell`、`potted_sapling`、果实/豆荚方块、枝上苹果与可可、`pale_oak_creaking_heart_branch` |
| 基础物品 | `dendro_potion`、`dirt_bucket`、`staff`、各树种种子物品（橡树、苹果橡、杜鹃、白桦、樱花、可可、绯红、深色橡、丛林、红树、橡树、苍白橡、云杉、诡异及巨型变种） |
| 实体 | `falling_tree`、`lingering_effector` |
| 方块实体 | 树种/根系土壤方块实体、`potted_sapling`、`creaking_heart` |
| 配方 | `dirt_bucket`、`seed_conversion`、`mega_seed`、`cocoa_beans` |
| 命令 | `/dt`（别名 `/dynamictrees`），注册 11 个子命令 |
| 世界生成 | 生物群系驱动的树种选择、原版树特性取消、洞穴根源杜鹃、可选村庄树木替换 |

::: note
本页所有内容均以当前检出的源码与生成资源为准。基础模组数据驱动：`trees/dynamictrees/` 资源数据定义树种、家族、树叶、土壤、果实、豆荚与世界生成，其他树包可以新增或覆盖这些值。
:::
