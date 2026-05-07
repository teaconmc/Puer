---
title: "返回卷轴"
navigation:
  title: "返回卷轴"
---

# 返回卷轴

**返回卷轴**（`obeliskdepths:return_scroll`）是用于离开 Obelisk Depths、回到你进入地点的物品。一组最多 16 个。

## 作用方式

卷轴只在你在 **Obelisk Depths** 维度内时生效。在其他任何地方使用，都只会提示卷轴只能在深渊内部生效。

1. 在深渊内右键（或以其他方式使用）卷轴，开始使用。
2. 需要持续持握 **60 tick**（3 秒）才会生效。
3. 完成后，模组会把你送回绑定到你的地牢会话的返回点——实际上就是你进入时所在的方尖碑区域。
4. 返回成功后会消耗卷轴（移除一个），创造模式下除外。

返回成功时会播放传送门的音效。

## 结果提示

服务器会通过一条简短消息报告结果，例如：

- `The scroll only answers from within the Obelisk Depths.` — 在维度外使用。
- `No active dungeon return point is bound to you.` — 没有绑定会话返回点。
- `Returned from the Obelisk Depths.` — 成功。
- `The return failed.` — 传送失败。
- `Returned from the Obelisk Depths using an emergency destination.` — 正常目的地不可用，使用了应急回退目的地。

请注意，并非每次卷轴使用都保证精确回到进入点：存储的返回数据缺失或不完整时，可能会回退到某个安全备选目的地。

[返回首页](index)
