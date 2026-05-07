---
title: 巨石大炮
navigation:
  title: 巨石大炮
---

# 巨石大炮

**`terraria_boulders:boulder_cannon`** 是一种朝其面朝方向发射巨石的大炮方块。像乘坐载具一样使用它：

- 坐在大炮上的 **`cannon_seat`** 实体（`CannonSeatEntity`）中。
- 瞄准并发射，发射的巨石沿弹道轨迹移动。
- 发射使用本模组的 `TerraStyleExplosion`——一种只摧毁爆炸抗性低于黑曜石（按方块微调偏差）的方块的爆炸，因此坚固的结构能幸存。

## 乘坐交互

乘坐座位通过 `MountClickPayload`（客户端 → 服务端）与 `ServerHandler` 处理，碰撞乘坐由 `mount_click` 数据包控制。客户端镜头/视角决定发射巨石的去向。

[返回首页](index)