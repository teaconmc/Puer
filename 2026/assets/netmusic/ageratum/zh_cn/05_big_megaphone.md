---
title: "大喇叭"
navigation:
  title: "05 大喇叭"
items:
  - "netmusic:big_megaphone"
---

# 大喇叭

## 直播广播

大喇叭会持续播放一个音频流给附近玩家。右键方块打开客户端编辑界面，填写：

- 以 `.m3u8` 结尾的有效 `http` 或 `https` URL。
- 广播显示名称。
- 广播范围，从 1 格到配置的最大值（默认最大 96 格）。

央广电台专用 URL 形式（`https://apicnrapp.cnr.cn/html/play.html?channelId=...`）也被接受。

## 预设电台

内置的 `assets/netmusic/broadcasting_presets.json` 定义四个央广预设电台。编辑界面的 `选择预设电台` 按钮会打开分页选择器，自动填入 URL 与名称。

## 保存、开始与停止

编辑器向服务端发送 `netmusic:big_megaphone_control`：

- `保存`：把 URL、名称与范围存到方块实体。
- `开始`：校验 URL 后开始广播。
- `停止`：停止广播。

服务端只接受距离大喇叭 8 格以内的玩家发送的控制包，不做管理员权限检查。开始广播还要求名称非空且流 URL 有效。

## 听众

服务端按配置的扫描间隔（默认 200 tick）刷新听众。进入配置范围 80% 内的玩家会收到 `big_megaphone_start` 并开始播放；超出完整范围的玩家会收到 `big_megaphone_stop`。移除方块会停止其广播。

每个客户端只保留最近的若干个广播进行播放（默认 3 个）。位置声音的音量为 `range / 16`，因此可听距离就是配置的格数范围。

## 红石

红石信号从无到有会切换广播：正在广播则停止，否则在保存的流 URL 与名称有效时开始广播。

<recipe id="netmusic:big_megaphone"/>

[返回首页](index)
