---
title: 服务器配置
navigation:
  title: 服务器配置
---

# 服务器配置

## 配置文件

服务端配置文件位于 `config/world-comment.json`，在服务端启动事件中加载（`Main` 的 serverStarting 回调）。关键字段：

- `syncRole` —— 同步角色（`HOST` 等），决定本服务器在跨服同步中是主机还是从机；`DATABASE` 只在 `syncRole == HOST` 时开启。
- `redisUrl` —— 可为空字符串；非空时启用基于 Redis 的跨服务器同步（`RedisSynchronizer`），让评论在网络中的多台服务器间传播。
- `imageGlobalKill` —— 全局禁用图片处理（上传/下载/渲染）的开关。

## 服务器命令

`/wcs imageGlobalKill <bool>` 一键切换 `imageGlobalKill`：保存配置、向所有在线玩家广播更新后的客户端配置（`PacketClientConfigS2C`），并在执行者聊天栏给出反馈（`gui.worldcomment.image_global_kill_feedback`）。

## 持久化

评论条目由 `ServerWorldData` 管理并序列化到文件（`FileSerializer`）；未启用 Redis 时，评论只保存在本服务器。服务端停止时关闭同步渠道（`RedisSynchronizer.close`）。

## 图片上传后端

上传器可选用多种后端：`LocalStorageUploader`、`SmmsUploader`、`LskyUploader`、`S3PreSignedUploader`、`ImglocUploader`，配合 `ImageUploader` 与预签名/缩略图处理；是否允许以 `imageGlobalKill` 作为总开关。

[返回首页](index)