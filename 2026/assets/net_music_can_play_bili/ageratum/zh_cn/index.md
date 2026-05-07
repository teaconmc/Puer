---
title: 网络音乐机：听听B站
navigation:
  title: 网络音乐机：听听B站
items:
  - net_music_can_play_bili:pad
---

# 网络音乐机：听听B站（Net Music Can Play Bili）

zhongbai233 的附属模组，模组 ID `net_music_can_play_bili`，组 ID `com.zhongbai233`，版本 `0.4.0-beta`，MIT 许可，面向 Minecraft `[26.1.2,27)`。

## 它自己的描述严重低估了它

模组描述与 README 都只说「把 B 站链接写进音乐 CD 就能播音频」。这是对的，但只是其中很小一部分。

实际实现的是：**为六个平台随包的真实 FFmpeg 解码栈**、**Dolby Digital Plus 与对象音频**、**带 YUV 着色器的视频播放**、一台**手持 MP4 播放器**、一块**可发布文档与世界范围地图的平板**、**全息眼镜**、**字幕作歌词投影**、**直播音频**，以及一套**带人工复审与审计日志的服务端白名单**。

**只读描述会让你把这个模组低估一个数量级。**

## 它是附属 —— NetMusic 是必需前置

`netmusic` 被声明为**必需**依赖 `[1.5.1,)`，`ordering = AFTER`，并写明了理由。本模组的职责是把 B 站 URL 解析成可播放音频**供 NetMusic 使用**；没有母模组就没有可接入之处。

`curios` 被声明为**可选** `[12,)` —— 装了 Curios 之后，耳机与全息眼镜可以戴进头部槽位而不必手持。

两者都在元数据中正确声明，因此都不是隐藏的运行时依赖。

## 安装前必须知道的两件事

**你的 B 站登录 Cookie 以明文存储。** 登录会把 `sessdata` 与完整 Cookie 头以普通 JSON 写入 `config/net_music_can_play_bili.json`。**任何拿到该文件的人就拿到了你的 B 站账号。** 详情与防范见 [08 技术说明与限制](08_technical_and_limits)。

**jar 内随包 40 个原生二进制。** FFmpeg 库加两个自研 JNI 桥，覆盖 Windows / macOS / Linux 的 x86-64 与 ARM64。这既是它能解那些格式的原因，也是下载体积大的原因。

## 注册了什么

| 注册表 | 条目 |
|:---|:---|
| 方块 | 4 —— `modern_turntable`、`speaker`、`video_projector`、`lyric_projector` |
| 物品 | 10 —— 4 个方块物品，加 `mp4`、`pad`、`media_management_tool`、`invisible_headphones`、`cat_headphones`、`holographic_glasses` |
| 方块实体 | 5 |
| 菜单 | 2 —— 媒体工具的绑定与报告 |
| **属性** | 2 —— `headphones`、`holographic_glasses` |
| **附魔** | 2 —— **可从附魔台获得** |
| 创造分页 | 1 |
| 战利品表 | **仅 2 个** —— 见 [02 设备](02_devices) |
| Mixin | 19 |
| 命令 | 服务端根命令 + 客户端根命令 |
| 配置 | 自定义 JSON 文件，不是 TOML |

## 阅读路线

1. [01 入门](01_getting_started) —— 需要什么，以及出声的最短路径。
2. [02 设备](02_devices) —— 全部十件物品与四个方块。
3. [03 B 站对接](03_bilibili_integration) —— 链接、登录、签名、CDN、字幕、直播。
4. [04 音频管线](04_audio_pipeline) —— FFmpeg、Dolby、空间音频、扬声器。
5. [05 视频与投影](05_video_and_projectors) —— 视频解码、着色器、Iris。
6. [06 平板](06_the_pad) —— 文档、媒体、地图与触发点。
7. [07 审核与权限](07_moderation_and_permissions) —— 白名单、复审、审计与权限节点。
8. [08 技术说明与限制](08_technical_and_limits) —— 原生库、凭据、本地化缺口、许可。

## 一览

| 关注点 | 详情 |
|:---|:---|
| 模组 ID | `net_music_can_play_bili`，v0.4.0-beta |
| 作者 / 许可 | zhongbai233 / **MIT** |
| Minecraft | **`[26.1.2,27)`** —— 真区间 |
| 必需 | **NetMusic `[1.5.1,)`** |
| 可选 | Curios `[12,)`；Iris（有守卫但未声明） |
| 本地化 | 英文 **111** 键、中文 **121** 键 —— **不对等**，见 [08](08_technical_and_limits) |
