---
title: 配置与兼容
navigation:
  title: 配置与兼容
---

# 配置与兼容

## 配置

模组注册了一个 COMMON 配置（`Config.SPEC`）。关联容器按服务器通过 `LinkedContainerManager` 持久化（在存档保存时保存、服务器启动时加载）。

## 网络

在 `minecartrevolution` 频道下通过 `PayloadRegistrar` 注册载荷：`JukeboxUpdateS2CPacket`、`BabelScramblePacket`、`EnderPortalShakePacket`、`MinecartCollisionPacket`（客户端）与 `ForceCompatRegisterPacket`（服务端）。服务端维护 `FORCE_COMAPTERS` 列表，记录选择加入强制兼容模式的玩家（由 force-compat 注册包管理）。

## 数据生成

进度由 `MRAdvancementProvider` 生成；配方由 `MRRecipeProvider` 生成（`GatherDataEvent` 的客户端与服务端 runner）。模组带访问转换器（`META-INF/accesstransformer.cfg`）与一个 mixin 配置。

## 渲染兼容

`CompatFriendlyBlockMinecartEntity` / `CompatFriendlyBlockMinecartRenderer` 为与其它方块展示类模组并存显示而设计，使矿车在混合整合包中保持一致观感。

[返回首页](index)