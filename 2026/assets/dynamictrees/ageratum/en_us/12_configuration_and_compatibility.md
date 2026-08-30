---
title: "Configuration and Compatibility"
navigation:
  title: "12 Configuration and Compatibility"
---

# Configuration and Compatibility

## Server configuration

Dynamic Trees writes a server config (`dynamictrees-server.toml`) with the following notable defaults (all values verified in `DTConfigs`):

| Area | Key (default) | Notes |
|:---|:---|:---|
| Growth | `treeGrowthMultiplier` (0.5) | Fraction of random ticks that grow trees; values > 1 cause multiple growth attempts per tick |
| Growth | `scaleBiomeGrowthRate` (0.5) | Extra biome scaling of the growth rate |
| Growth | `boneMealGrowthPulses` (1) | Growth pulses triggered by bone meal / fertilizer |
| Growth | `diseaseChance` (0.0) | Chance that a fertility-0 tree gets diseased |
| Rot | `maxBranchRotRadius` (7) | Branches beyond this radius can rot; `0` disables branch rot |
| Harvest | `treeHarvestMultiplier` (1.0) | Multiplies final wood harvest |
| Harvest | `dropSticks` (true) | Whether branches can drop sticks |
| Harvest | `maxTreeHardness` (20.0) / `treeHardnessMultiplier` (1.0) | Branch hardness scaling and cap |
| Harvest | `axeDamageMode` (`THICKNESS`) | Axe durability consumption mode: `VANILLA`, `THICKNESS` or `VOLUME` |
| Harvest | `enableFallingTrees` (true) / `enableFallingTreeDamage` (true) / `fallingTreeDamageMultiplier` (1.0) | Falling tree animation and damage |
| Interaction | `isLeavesPassable` (false) / `vanillaLeavesCollision` (false) | Whether leaves allow entities to pass; Passable Foliage can override |
| Interaction | `enableBranchClimbing` (true) / `enableCanopyCrash` (true) | Climbing branches and falling into canopies |
| Soil | `rootyBlockHardnessMultiplier` (40.0) | Rooty soil hardness relative to dirt |
| Soil | `dirtBucketPlacesDirt` (true) | Dirt bucket places dirt on right-click |
| Seeds | `leavesSeedDropRate` (1.0) / `voluntarySeedDropRate` (0.01) / `seedPlantRate` (1/6) / `seedTimeToLive` (1200) / `seedOnlyForest` (false) | Seed drops, voluntary planting odds and seed lifetime |
| Vanilla replacement | `replaceVanillaSaplings` (false) / `replaceNyliumFungi` (true) / `cancelVanillaVillageTrees` (true) | Replacements of vanilla saplings, nether fungi and village trees |
| Worldgen | `worldGen` (true) / `dimensionBlacklist` (empty) / `sampleNoiseBiome` (true) | World generation switches |
| Recipes | `generateDirtBucketRecipes` (true) / `generateMegaSeedRecipe` (true) / `biocharBrewingBase` (`minecraft:thick`) | Auto-generated recipes and potion base |
| Seasons | `preferredSeasonMod` (`"*"`) / `useSeasonalSeedDropFactor` (true) / `useSeasonalGrowthFactor` (true) / `useSeasonalFruitFactor` (true) / `wetSeasonOffset` (2.5) | Season provider selection and seasonal scaling |
| Pale garden | `hideCreakingHeart` (true) | Creaking hearts camouflage as normal branches until stripped |

## Loader and mod boundaries

- **NeoForge** — requires NeoForge `26.1.2.71`+ and Minecraft `26.1.2`; Java 25. No other hard dependencies.
- **Fabric** — requires Fabric Loader `0.18.6`+, Fabric API `0.145.3+26.1.1`, Minecraft `26.1.2`, Java 25, and **Forge Config API Port** (hard dependency). Dynamic Trees Plus is only suggested.
- **Built-in compatibility checks** — the code queries Fast Leaf Decay, Passable Foliage, Dynamic Trees Plus, Serene Seasons and Ecliptic Seasons. Seasonal integration activates when a season provider is loaded and configured (`preferredSeasonMod` selects it; `"!"` disables seasons entirely). Passable Foliage can override the `isLeavesPassable` behavior.
- **Tooltip/inspection** — Waila / Jade handlers exist in both loader implementations for branch and soil tooltips.
- **Tree packs** — base data lives in `trees/dynamictrees/`; other packs can extend or override species, families, leaves, soils, fruits, pods and worldgen.

[Back to the Dynamic Trees index](index)