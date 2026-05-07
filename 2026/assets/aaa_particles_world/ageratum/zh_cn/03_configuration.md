---
title: "客户端配置"
navigation:
  title: "03 客户端配置"
---

# 客户端配置

## 效果开关

以下布尔配置默认均为 `true`：

| 配置键 | 控制内容 |
|:--|:--|
| `enable_crit` | 普通暴击替换 |
| `enable_magical_crit` | 魔法暴击替换 |
| `enable_lightning` | 闪电替换 |
| `enable_small_explosion` | 小型爆炸替换 |
| `enable_big_explosion` | 大型爆炸替换 |
| `enable_loot_beam` | 非白色名称掉落物的光束 |
| `enable_loot_sound` | 符合光束条件的物品落地音效 |
| `enable_fireball_trail` | 火球尾焰 |
| `enable_fireflies` | 夜间沼泽萤火虫 |

`enable_loot_sound` 还要求 `enable_loot_beam` 开启。关闭光束会连带关闭专用落地音效。

## 并发上限

`limitation` 分组提供同类 Effekseer 发射器的额度，但各创建路径并没有统一应用这些上限：

| 配置键 | 默认值 | 最小值 |
|:--|--:|--:|
| `max_lightning_emitters` | `8` | `0` |
| `max_small_explosion_emitters` | `240` | `0` |
| `max_big_explosion_emitters` | `120` | `0` |
| `max_loot_beam_emitters` | `1024` | `0` |

计数来自 AAA Particles 当前已加载效果中的发射器容器。把数值调低可减少受检查路径在密集场景中的峰值；设为 `0` 只会阻止实际执行额度检查的路径。

闪电超额时保留原版闪电。粒子提供器触发的爆炸超额时也会避免继续把回退粒子替换成小爆炸。战利品光束超额则直接跳过。

::: warning
常规 `ClientboundExplodePacket` 处理路径会直接播放大小爆炸特效，没有调用爆炸额度检查。因此即使把 `max_small_explosion_emitters` 或 `max_big_explosion_emitters` 设为 `0`，这类爆炸仍会创建；两个上限只约束粒子提供器替换路径。
:::

## 原版白烟

`poofs` 分组包含两项默认开启的 Minecraft 26.1 配置：

- `remove_poof_for_small_explosion`
- `remove_poof_for_big_explosion`

小型白烟项要求小型爆炸替换开启。大型白烟项在当前实现中检查的是“任一大小爆炸替换仍开启”，而不只是大型替换开关；这是源码行为与配置注释之间的细微差异。关闭全部爆炸替换后，这两项都不会单独隐藏原版表现。

## 调整建议

- 只想保留战斗反馈：开启两种暴击和闪电，关闭萤火虫与战利品光束。
- 掉落物很多时：优先降低光束上限或关闭落地音效。
- 连锁爆炸卡顿时：降低大小爆炸上限可减少粒子提供器替换；若仍卡顿，应关闭对应爆炸替换，因为数据包路径会绕过上限。
- 想恢复原版爆炸：大小爆炸替换与两项白烟移除都关闭。

[返回首页](index)
