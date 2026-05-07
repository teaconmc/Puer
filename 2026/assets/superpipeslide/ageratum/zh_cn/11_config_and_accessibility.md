---
title: "配置与无障碍"
navigation:
  title: "11 配置与无障碍"
---

# 配置与无障碍

模组有独立的服务端与客户端配置文件。服务端设置控制连接解算、滑行速度与站点行为；客户端设置控制相机反馈、安全削减与投影图片加载。

## 服务端配置

| 键 | 默认值 | 范围 | 作用 |
|:---|:---|:---|:---|
| `maxConnectionLength` | `64.0` | `2.0` – `512.0` | 解算后单条管道的最大长度（格）。 |
| `captureRadius` | `0.72` | `0.25` – `2.0` | 与中心线的捕获距离。 |
| `captureVerticalTolerance` | `1.15` | `0.25` – `3.0` | 捕获时脚部位置的垂直容差。 |
| `initialSlideSpeed` | `0.18` | `0.03` – `1.25` | 初始滑行速度（格/tick）。 |
| `normalMaxSpeed` | `0.90` | `0.05` – `3.0` | 普通管道最高速度。 |
| `normalAcceleration` | `0.015` | `0.0` – `0.5` | 普通管道加速度。 |
| `normalOverspeedDeceleration` | `0.12` | `0.0` – `1.0` | 普通管道超速减速。 |
| `accelerationAttributeAcceleration` | `0.14` | `0.0` – `1.0` | 加速属性的速度增益。 |
| `highwayMaxSpeed` | `4.80` | `0.05` – `12.0` | 高速管道最高速度。 |
| `highwayAcceleration` | `0.08` | `0.0` – `1.0` | 高速管道加速度。 |
| `highwayOverspeedDeceleration` | `0.03` | `0.0` – `0.5` | 高速管道超速减速。 |
| `branchChoiceMaxSpeed` | `0.22` | `0.03` – `2.0` | 未解决岔路选择时的速度上限。 |
| `branchChoicePreviewDistance` | `24.0` | `4.0` – `96.0` | 岔路选择出现的提前距离。 |
| `branchChoiceDeceleration` | `12.0` | `0.0` – `24.0` | 接近岔路选择时的强制减速。 |
| `platformClaimRadius` | `64.0` | `8.0` – `512.0` | 站台认领距离站点方块的范围。 |
| `autoOutOfStationTransferRadius` | `64.0` | `0.0` – `512.0` | 自动同维度换乘半径。 |
| `farOutOfStationTransferWarningDistance` | `128.0` | `16.0` – `4096.0` | 出现换乘确认提示的距离。 |
| `routePathfinderMaxVisitedNodes` | `16384` | `1024` – `262144` | 单路线区段寻路预算。 |
| `stationSlowMaxSpeed` | `0.18` | `0.03` – `2.0` | 站点停靠时的速度上限。 |
| `stationSlowDeceleration` | `0.45` | `0.0` – `4.0` | 进入站点停靠时的强制减速。 |
| `maxStepDistance` | `6.0` | `0.05` – `16.0` | 单个服务端 tick 最多消耗的滑行距离。 |

## 客户端配置

| 键 | 默认值 | 作用 |
|:---|:---|:---|
| `shaderpackPipeRenderMode` | `PERFORMANCE` | 着色器包集成使用的管道渲染器；`NATIVE` 更贴近着色器效果。 |
| `enableSlideCameraFeedback` | `true` | 允许相机俯仰/侧倾与弯道前倾提示。 |
| `reduceMotionSicknessRisk` | `false` | 禁用相机侧倾、FOV 推进、折叠扭曲与强第一人称反馈；玩法不变。 |
| `reducePhotosensitivityRisk` | `false` | 移除脉动亮度、全亮发光、拖尾粒子、折叠闪光与强高亮。 |
| `enableProjectionNetworkImages` | `true` | 允许客户端下载投影图片 URL。 |
| `allowHttpProjectionNetworkImages` | `false` | 允许明文 `http://` 投影图片；HTTPS 始终优先。 |
| `projectionNetworkImageCacheSize` | `64` | 已解码图片缓存数量。 |
| `projectionNetworkImageMaxBytes` | `4 MiB` | 单张图片下载上限。 |
| `projectionNetworkImageMaxPixels` | `2048 × 2048` | 单张图片解码尺寸上限。 |

第一次滑行会打开安全警告界面；开启两个安全选项会写入客户端安全状态文件，客户端配置保存的是长期值。

## 渲染集成

构建包含 **Sodium**、**Iris** 与 **Distant Horizons** 的可选集成源码，由 Gradle 属性控制（`enable_sodium_integration`、`enable_iris_integration`、`enable_distanthorizons_integration`，默认都启用）。如果着色器包下管道渲染异常，可以把 `shaderpackPipeRenderMode` 切换为 `NATIVE`。

## 当前限制

- 当前源码没有注册任何命令。
- 模组不注册自定义实体，滑行直接使用玩家实体。
- 管道不能直接跨维度连接，请使用维度折叠锚点。
- `broken_anchor_cleaner` 是仅创造模式可用的清理物品，没有配方。
- `platform_claimer` 由站点编辑器生成，不能合成。
- 两种属性工具没有配方，只有消耗型涂层可以合成。
- TODO 列表中仍有电影化视角与发射/滑翔/弹射锚点。这些功能尚未实现，不能作为可用功能记录。

[返回首页](index)
