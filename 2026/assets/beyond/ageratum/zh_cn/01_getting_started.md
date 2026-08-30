---
title: 获取开始
navigation:
  title: 获取开始
---

# 获取开始

## 配置肉鸽维度

Beyond 只会在通用配置（`beyond-common.toml`，类型 COMMON，客户端与服务端共享）列出的维度中激活。键 `rogueDimension` 的每条配置格式为：

```
dimension|safe_structure|node_structure
```

多条配置用英文分号分隔。三项必须全部有效；缺少或无效任何一项时整条配置被忽略，该维度不会被当作肉鸽维度。加载已配置的维度会初始化安全区结构与默认肉鸽能力；tick、玩家 tick 与生物 tick 都以 `RogueRuntime.isActive(level)` 为门禁。

## 活动区行为

活动区在节点完成时会围绕安全区向外扩张：

- `activeZoneMinExpand` / `activeZoneMaxExpand` —— 向外扩张的最小/最大区块数。
- `activeZoneMinNodes` —— 初始活动区至少需要覆盖的节点数。
- `activeZoneNodeExpandRadius` / `activeZoneNodeMaxExpandRadius` —— 节点完成后按区块计的扫描半径。
- `activeZoneMinConnections` —— 扩张后至少需要扫描到的其他未完成节点连接数。
- `activeZoneBorderVisibleChunks` —— 玩家距离边界多少区块内才渲染边界。
- `activeZoneRenderColor` —— 可渲染活动区边界的 ARGB 颜色。

区域、安全区与绿色节点边界的渲染可用 `zoneRenderEnabled` / `renderSafeZoneBorder` / `renderActiveZoneBorder` / `renderGreenNodes` 开关。调试输出由 `debugMessages` 控制。

## 物品与创造页

创造页 `beyond:beyond_tab`（键 `itemGroup.beyond`）收录：

- `beyond:loot_bag` —— 战利品袋，也是标签页图标。
- `beyond:world_seed` —— 世界种子物品。
- `beyond:node_block` —— 用于标记遭遇节点的节点方块。

## 命令

所有命令均位于 `/beyond` 下：

- `teleport home` —— 传送到你的家。
- `teleport activeBoundary` —— 传送到活动区边界。
- `teleport node <type>` —— 传送到指定类型的节点。
- `safezone <chunkSize>` —— 需要权限等级 2；将安全区扩张到指定区块尺寸（2–256）。
- `unlockNode` —— 需要权限等级 2；解锁当前节点。
- `config currentProgress <value>` —— 配置当前进度。
- `playerPhase get <player>` / `playerPhase set <player> <phase>` —— 读取或设置玩家阶段。

[返回首页](index)