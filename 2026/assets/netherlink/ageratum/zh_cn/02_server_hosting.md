---
title: 从服务器托管
navigation:
  title: 从服务器托管
description: /nli 命令，以及专用服务器上账户与在线状态的管理方式。
---

# 从服务器托管

NetherLink 提供一个单一的服务器命令，注册为 `/netherlink`，短别名 `/nli`。它是专用服务器与 NetherLink 账户 / 在线状态系统之间的主要桥梁。

## `/nli` 命令

- `/nli`（`/netherlink` 的别名）是服务器端账户与在线状态管理的根命令。

在专用服务器上使用它来管理代表该服务器实例的 NetherLink 账户，并控制服务器如何向好友发布自己的在线状态。

## 账户与在线状态的存储方式

在服务器上，账户记录保存在 `netherlink/accounts/*.json`。服务器每 **1200 tick** 刷新一次这些记录，因此通过该命令推送的账户与在线状态会与后端定期同步。

## 配置

该命令从共享配置文件 `config/netherlink/config.json` 读取其活动后端：

- `activeService` 选择账户与在线状态操作使用的后端。
- `instanceName` 标识该服务器实例在在线状态 / 好友列表中的名称。

修改这些需要编辑配置；随后所选后端即驱动 `/nli` 的账户操作。

## 对托管者的意义

要让好友通过 NetherLink 加入一个世界：

1. 确保服务器运行并配置了 `activeService` 与 `instanceName`。
2. 使用 `/nli` 管理服务器的 NetherLink 账户与在线状态。
3. 那些在线、连接到同一服务且获得你同意的好友，随后即可通过点对点链路直接加入。

[返回首页](index)
