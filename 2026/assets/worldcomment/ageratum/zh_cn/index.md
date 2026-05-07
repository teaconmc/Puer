---
title: 随处随笔
navigation:
  title: 随处随笔
---

# 随处随笔（WorldComment）

WorldComment（模组 ID `worldcomment`，版本 0.6.0-beta.4）让你直接在游戏世界中发布评论，每条评论与一个物理坐标位置关联。由 Zbx1425 在 `cn.zbx1425.worldcomment` 下开发，目标环境为 Minecraft 26.1.2，采用 GPLv2 许可。

## 工作原理

玩家评论锚定在世界坐标（可选附带截图），并在世界中渲染，因此访问同一地点的玩家可以阅读并留下笔记。公共代码、GUI 与渲染器位于客户端；服务端负责存储条目、复制给玩家，并可跨多台服务器同步。

## 注册内容

- **物品** —— `worldcomment:comment_tool`（堆叠上限 1，位于工具与实用物品栏目；右键发布/阅读评论）与 `worldcomment:placeable_comment`（内嵌 ID 的可放置评论标记）。
- **数据组件** —— `worldcomment:placeable_comment_meta` 保存可放置评论的元数据。
- **客户端命令** —— `/wc`（发送）、`/wc send` 与 `/wc list`（打开评论列表界面）。`visible` 子命令为占位、未接线。
- **服务端命令** —— `/wcs imageGlobalKill <bool>` 切换服务端图片处理开关，并向所有玩家广播配置变更。

## 服务端数据

- **配置** —— 服务端 `config/world-comment.json`；关键字段含 `syncRole`、`redisUrl`（为空则禁用基于 Redis 的跨服务器同步）与 `imageGlobalKill`。
- **持久化与同步** —— 条目由 `ServerWorldData` 存储并序列化到文件；设置 `redisUrl` 时由 `RedisSynchronizer` 将多台服务器互联，使评论在网络间传播。
- **图片支持** —— 图片可用多种后端上传/下载（`LocalStorageUploader`、`SmmsUploader`、`LskyUploader`、`S3PreSignedUploader`、`ImglocUploader`），并附带缩略图与预签名处理，受服务端 `imageGlobalKill` 开关制约。

## 阅读路线

- [获取开始](01_getting_started) —— 物品、命令与发布第一条评论。
- [服务器配置](02_server_configuration) —— 存储、跨服同步与图片设置。
