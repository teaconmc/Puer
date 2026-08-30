---
title: 获取开始
navigation:
  title: 获取开始
---

# 获取开始

获取 `worldcomment:comment_tool`（评论工具，堆叠上限 1，位于工具与实用物品栏目）与 `worldcomment:placeable_comment`（可放置评论标记）。

## 发布评论

持有评论工具时按 `/wc` 或 `/wc send`，会打开评论发送流程（`CommentToolItem.Client.triggerCommentSend`），把评论（可附带截图）锚定到你当前所在的游戏位置。发出的条目会由服务端存储并复制给你附近的玩家；访问同一坐标的玩家可以在世界中读到这些留文。

## 浏览评论

`/wc list` 打开评论列表界面（`CommentListScreen`），集中浏览该位置或范围内已发布的评论条目。

## 可放置评论

`placeable_comment` 是在世界中放置的评论标记，通过 `worldcomment:placeable_comment_meta` 数据组件嵌入所指向评论的元数据；放置请求经服务端网络包（`PacketRequestPlacementC2S`）确认。

## 客户端能力

评论的检索在客户端按区块/区域进行（`PacketRegionRequestC2S` / `PacketRegionDataS2C`）；图片可随评论上传、生成缩略图并下载显示（`PacketImageUpload*` / `PacketImageDownload*`），表情符号由 `EmojiRegistry` 提供。截图凭 `Screenshot` 工具类抓取。

[返回首页](index)