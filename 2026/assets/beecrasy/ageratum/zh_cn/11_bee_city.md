---
title: "蜂城"
navigation:
  title: "11 蜂城"
items:
  - "beecrasy:bee_city_core"
  - "beecrasy:bee_city_comb"
  - "beecrasy:bee_city_queen"
---

# 蜂城

<block id="beecrasy:bee_city_core"/>

<block id="beecrasy:bee_city_comb"/>

<block id="beecrasy:bee_city_queen"/>

蜂城由核心、巢脾和王台三类能力方块组成。当前扩散逻辑能识别并绑定已经存在的蜂城能力方块，却不会把普通的 `beecity_spreadable` 巢脾自动转换成这些方块。因此不能只搭一团普通巢脾并等待完整蜂城自行长成。

三种蜂城方块都没有注册合成配方。除非整合包通过任务、战利品或商店提供，它们只能在创造模式或命令中取得。搭建测试结构时，先放核心，再手工放置巢脾与王台；向核心放入 1 只蜂后和至少 1 只雄蜂、切换为自动模式，并等待跨过生产间隔后再检查绑定。只摆方块而不让核心工作，不会触发扫描。

::: warning
蜂城巢脾的点亮状态一旦变为真，当前逻辑不会再返回假。灯光只能说明它曾经激活，不能可靠表示当前网络仍在运行。
:::

[返回蜂会目录](index)
