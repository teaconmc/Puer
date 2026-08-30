---
title: "KilaGraphDemo"
navigation:
  title: "KilaGraphDemo"
---

# KilaGraphDemo

KilaGraphDemo 是 **KilaGraph** 节点图库的展示模组。它不是生存内容包，而是一套创造工具，让你用可视化图搭建作品并在服务器上分享：

- **无人机农场解题。** 用节点图为虚拟无人机编程去种南瓜，然后提交给一个确定性评分器与服务器排行榜。
- **全息投影。** 编写着色器图、挂上几何体（立方体、球、面片或导入的 OBJ），把它投影到世界里。上传后其他玩家可以下载、点赞与展示。
- **幻灯机着色器特效。** 在装有可选的 `slide_show` 模组时，编写着色器图并应用到投影仪上供所有人观看。

## 快速说明

| 项目 | 值 |
|:---|:---|
| 模组 ID | `kilagraphdemo` |
| 版本 | `26.1.0.2` |
| 许可证 | MIT |
| 作者 | KilaBash |
| 必需依赖 | **`kilagraph`** |
| 可选依赖 | `slide_show` |
| 方块 | 7 个 |
| 配方 / 战利品表 / 标签 | **全无** |
| 命令 / 配置文件 | 无 |
| 创造分类 | `kilagraphdemo:kilagraphdemo` |

由于模组完全不附带数据包，**七个方块全部只能在创造模式获得，且破坏时不掉落任何东西**。详见 [01 开始使用](01_getting_started)。

## 阅读路线

- [01 开始使用](01_getting_started) — 依赖、七个方块与获取方式
- [02 无人机编程站](02_drone_station) — 搭建田地与运行程序
- [03 无人机节点](03_drone_nodes) — 十二个节点及各自开销
- [04 农场与评分](04_farm_and_scoring) — 南瓜生长、合并，以及官方分数如何算出
- [05 全息投影](05_holograms) — 几何体、着色器图与放置
- [06 分享与限制](06_sharing_and_limits) — 上传、下载、点赞与全部尺寸上限
- [07 幻灯机集成](07_slideshow_integration) — 投影仪上的着色器特效
- [08 技术说明](08_technical_notes) — 注册表、mixin、网络与测试
