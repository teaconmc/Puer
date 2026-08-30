---
title: "配置与兼容"
navigation:
  title: "12 配置与兼容"
---

# 配置与兼容

## 服务端配置

动态的树写入服务端配置（`dynamictrees-server.toml`），以下为值得注意的默认值（全部在 `DTConfigs` 中核验）：

| 领域 | 键（默认值） | 说明 |
|:---|:---|:---|
| 生长 | `treeGrowthMultiplier`（0.5） | 触发树木生长的随机刻比例；大于 1 时每次随机刻多次生长 |
| 生长 | `scaleBiomeGrowthRate`（0.5） | 生长速率的额外生物群系缩放 |
| 生长 | `boneMealGrowthPulses`（1） | 骨粉/肥料触发的生长脉冲次数 |
| 生长 | `diseaseChance`（0.0） | 肥力为 0 的树生病的概率 |
| 腐烂 | `maxBranchRotRadius`（7） | 超过此半径的树枝可能腐烂；`0` 关闭树枝腐烂 |
| 采伐 | `treeHarvestMultiplier`（1.0） | 缩放最终木料收获 |
| 采伐 | `dropSticks`（true） | 树枝是否掉落木棍 |
| 采伐 | `maxTreeHardness`（20.0）/ `treeHardnessMultiplier`（1.0） | 树枝硬度缩放与上限 |
| 采伐 | `axeDamageMode`（`THICKNESS`） | 斧头耐久消耗模式：`VANILLA`、`THICKNESS` 或 `VOLUME` |
| 采伐 | `enableFallingTrees`（true）/ `enableFallingTreeDamage`（true）/ `fallingTreeDamageMultiplier`（1.0） | 倒树动画与伤害 |
| 交互 | `isLeavesPassable`（false）/ `vanillaLeavesCollision`（false） | 树叶是否允许实体穿过；Passable Foliage 可覆盖 |
| 交互 | `enableBranchClimbing`（true）/ `enableCanopyCrash`（true） | 攀爬树枝与坠入树冠 |
| 土壤 | `rootyBlockHardnessMultiplier`（40.0） | 根系土壤相对泥土的硬度 |
| 土壤 | `dirtBucketPlacesDirt`（true） | 泥土桶右键放置泥土 |
| 种子 | `leavesSeedDropRate`（1.0）/ `voluntarySeedDropRate`（0.01）/ `seedPlantRate`（1/6）/ `seedTimeToLive`（1200）/ `seedOnlyForest`（false） | 种子掉落、自行种植概率与种子寿命 |
| 原版替换 | `replaceVanillaSaplings`（false）/ `replaceNyliumFungi`（true）/ `cancelVanillaVillageTrees`（true） | 原版树苗、下界菌类与村庄树木的替换 |
| 世界生成 | `worldGen`（true）/ `dimensionBlacklist`（空）/ `sampleNoiseBiome`（true） | 世界生成开关 |
| 配方 | `generateDirtBucketRecipes`（true）/ `generateMegaSeedRecipe`（true）/ `biocharBrewingBase`（`minecraft:thick`） | 自动配方与药水基底 |
| 季节 | `preferredSeasonMod`（`"*"`）/ `useSeasonalSeedDropFactor`（true）/ `useSeasonalGrowthFactor`（true）/ `useSeasonalFruitFactor`（true）/ `wetSeasonOffset`（2.5） | 季节提供方选择与季节缩放 |
| 苍白花园 | `hideCreakingHeart`（true） | 吱吱怪之心伪装成普通树枝，直到被剥皮 |

## 加载器与模组边界

- **NeoForge**——要求 NeoForge `26.1.2.71`+ 与 Minecraft `26.1.2`；Java 25。无其他硬依赖。
- **Fabric**——要求 Fabric Loader `0.18.6`+、Fabric API `0.145.3+26.1.1`、Minecraft `26.1.2`、Java 25，以及 **Forge Config API Port**（硬依赖）。Dynamic Trees Plus 仅为建议。
- **内置兼容检查**——代码会查询 Fast Leaf Decay、Passable Foliage、Dynamic Trees Plus、Serene Seasons 与 Ecliptic Seasons。季节集成在加载并配置了季节提供方后激活（`preferredSeasonMod` 选择；`"!"` 完全禁用季节）。Passable Foliage 可覆盖 `isLeavesPassable` 行为。
- **提示/检视**——两种加载器实现都带有 Waila / Jade 处理器，用于树枝与土壤提示。
- **树包**——基础数据位于 `trees/dynamictrees/`；其他包可以扩展或覆盖树种、家族、树叶、土壤、果实、豆荚与世界生成。

[返回动态的树首页](index)