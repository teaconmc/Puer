---
title: 机制
navigation:
  title: 机制
---

# 机制

## 矿车链

`MinecartChainManager` 与 `minecartrevolution:chain` 实体把矿车连成一列，让头车牵引整支车队（`chainEntityTypeSupplier` 在初始化时接线）。这是本模组的旗舰车队机制。

## 传送门

传送门矿车可携带玩家或方块跨维度移动：`minecart_nether_portal` 传送到下界，`minecart_end_portal` 传送到末地；`PortalMinecartStorage` 保存传送门链路状态，`EnderPortalShakePacket` 负责客户端震动。`PortalMinecartTeleportCriterion` / `BeaconActivatedCriterion` 进度触发器会在这些成就达成时触发。

## 红石与能量

能量矿车随移动发出稳定或定向的红石信号；压力板与活塞矿车与铁轨网络交互。

## 进度触发器

进度由多个自定义判据追踪，包括 `BeaconActivatedCriterion`、`BabelCriterion` / `BabelTowerCriterion`（「巴别塔」乱序玩法，`BabelScramblePacket`）、`BlockCartCraftedCriterion`、`DjangoUnchainedCriterion`、`HoneyMinecartStuckCriterion`、`MovingOnJukeboxCartCriterion`、`NoGravityCriterion`、`SofaAwayCriterion`、`SpongeAbsorbedCriterion`。配方由 `MRRecipeProvider` 生成（客户端与服务端数据生成）。

## 其它

- `minecart_sponge` / `wet_sponge` 在 `SpongeMinecartEntity.ABSORB_RADIUS` 范围内吸收附近的水，至多 `ABSORB_LIMIT`。
- 海绵、蜂蜜及其它矿车触发各自的判据。
- 客户端动态光照（`DynamicLightsSpread` / `DynamicLightsStorage`）与镜头震动（`CameraShakeManager`）增添表现力。

[返回首页](index)