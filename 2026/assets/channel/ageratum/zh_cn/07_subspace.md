---
title: "Subspace 中继"
navigation:
  title: "07 Subspace 中继"
---

# Subspace 中继

## 用途与数据流

Subspace 是独立于 Minecraft 服务端的语音中继程序。启用后，Minecraft 服务端仍负责登录、令牌和配置下发，但客户端把 Opus 音频直接送往 Subspace，再由它转发给接收者。

Channel 仍必须安装在 Minecraft 服务端。一个 Subspace 进程可以服务多个 Minecraft 服务端，但后连接实例需要采用与首个实例相同的协议和安全等级；多个服务器上相同 UUID 同时连接同一进程属于未定义行为。

## 服务端配置

`ChannelServerConfig` 当前字段如下：

| 字段 | 默认值 | 作用 |
|:---|:---:|:---|
| `useSubspace` | `false` | 启用中继 |
| `subspaceAddress` | 空 | 中继地址或域名 |
| `subspaceServerPort` | `0` | Subspace 接收 Minecraft 服务端连接的端口 |
| `subspaceClientPort` | `0` | Subspace 接收客户端连接的端口 |
| `subspaceFrequency` | 空 | Minecraft 服务端到 Subspace 的共享口令 |
| `subspaceProtocol` | `TCP` | 客户端传输协议 |
| `subspaceSecurityLevel` | `MID` | 客户端连接安全等级 |

环境变量 `CHANNEL_SUBSPACE_FREQUENCY` 存在时会覆盖配置文件中的 frequency。端口默认 `0` 不是可直接部署的推荐值，必须与实际 Subspace 监听配置一致。

## 当前协议支持

枚举和 README 展示 `TCP`、`UDP`、`GRPC`，但当前 Java 客户端对 UDP 和 GRPC 直接抛出未支持异常，C++ Subspace 主程序也只保留 TODO 分支。实际部署只能选择 `TCP`。

::: danger
不要因配置能保存 UDP 或 GRPC 就在生产环境选择它们。当前实现不会自动回退到 TCP。
:::

## 安全等级

TCP 模式下：

- `NONE`：握手和语音均为明文。
- `LOW`：握手使用 AES-GCM 校验，语音明文。
- `MID`：握手使用 AES-GCM，语音使用 AES-CTR 加密但不提供完整防篡改校验。
- `HIGH`：握手和语音都使用 AES-GCM，提供加密与认证。

Minecraft 服务端到 Subspace 的连接始终使用 AES-GCM。客户端口令由 Minecraft 服务端在玩家加入时生成，不是 `subspaceFrequency` 本身。

## 运维检查

1. 先在同机或受控局域网用 TCP 验证两个端口。
2. 确认 Minecraft 服务端与 Subspace 的 frequency 完全一致。
3. 再选择符合威胁模型的安全等级并观察 CPU 成本。
4. 连接失败时检查 Minecraft 服务端、客户端和 Subspace 三方日志。
5. 修改配置后使用 `/ch reset_subspace` 重建连接。

[返回沉浸语音目录](index)
