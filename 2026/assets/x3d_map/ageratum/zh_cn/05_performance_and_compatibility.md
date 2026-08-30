---
title: 性能与兼容模式
navigation:
  title: 性能与兼容模式
---

# 性能与兼容模式

## 地形细节层级

正常模式在 LOD 基础距离以内使用方块级地形，远处改用高度场。默认基础距离是 `512` 格，之后会在约 `+1000`、`+2000` 和 `+4000` 格处继续降低细节。

`recordAllAboveSeaLevel` 默认为 `true`。编译器会把每一列的最低记录高度向海平面扩展，以保留海平面以上的可见结构；这会增加内存、显存和磁盘数据量，但仍不会生成洞穴视图。

## 客户端性能配置

| 配置键 | 默认值 | 范围 | 影响 |
|:---|:---:|:---:|:---|
| `forceCompatibilityMode` | `false` | 开 / 关 | 强制使用降级渲染路径 |
| `recordAllAboveSeaLevel` | `true` | 开 / 关 | 提高表面结构保留量和显存占用 |
| `minimapRenderInterval` | `10` | `1`–`200` 帧 | 小地图地形重绘频率 |
| `autoSaveInterval` | `1200` | `20`–`72000` tick | 地图自动保存周期 |
| `drawNewChunkInterval` | `20` | `1`–`1200` tick | 更新队列处理周期 |
| `drawNewChunkCount` | `1000` | `1`–`50000` | 每次最多处理区块数 |
| `showMapInfo` | `true` | 开 / 关 | 首次打开时显示说明；显示后自动改为关 |

队列每次处理更多区块可以更快补图，但会产生更明显的 CPU 与 GPU 上传峰值。较短自动保存间隔会增加磁盘写入。

## 自动兼容性检测

登录时，模组检查以下 OpenGL 扩展：

- `GL_ARB_multi_draw_indirect`，即 MDI。
- `GL_ARB_sparse_texture`，即稀疏纹理。
- `GL_ARB_shader_storage_buffer_object`，即 SSBO。

缺少任意一项，或手动打开 `forceCompatibilityMode`，都会启用兼容模式并记录原因。地图首次打开会显示警告窗口。

兼容模式使用完整网格 LOD 缓冲，不使用正常模式的 MDI、稀疏纹理与 SSBO 路径。源码和界面都警告该模式可能严重掉帧甚至崩溃；它是硬件能力不足时的降级路径，不是通用性能优化开关。

## 调整顺序

出现卡顿时，建议按影响范围逐步调整：

1. 降低小地图高精度范围，或提高小地图重绘间隔。
2. 降低世界地图 LOD 距离与加载距离。
3. 减小 `drawNewChunkCount`，让队列分更多批处理。
4. 若显存紧张，关闭 `recordAllAboveSeaLevel` 后重新编译相关区块。
5. 只在自动检测失败或确实需要时强制兼容模式。

[返回 x3d Map 目录](index)
