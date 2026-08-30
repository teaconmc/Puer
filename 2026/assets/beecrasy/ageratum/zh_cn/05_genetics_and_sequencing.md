---
title: "遗传与测序"
navigation:
  title: "05 遗传与测序"
items:
  - "beecrasy:handheld_sequencer"
  - "beecrasy:sequencer"
---

# 遗传与测序

手持式测序仪用于查看单只蜜蜂携带的基因。把待测蜂放入界面后，还要消耗一个 `beecrasy:honey_drop`；它不接受蜂蜜标签中的任意替代物，测序也不是免费的查看动作。

手持测序仪有钻石和 apite 两条配方。钻石配方在原版材料层面可达；apite 当前没有产出来源。

<recipe id="beecrasy:crafting/handheld_sequencer_from_diamond"/>

<recipe id="beecrasy:crafting/handheld_sequencer_from_apite"/>

<block id="beecrasy:sequencer"/>

<recipe id="beecrasy:crafting/sequencer"/>

方块测序仪适合固定生产线。默认每次操作消耗 `25 mB` 蜂蜜和 `5000 FE`，能量输入上限为 `640 FE/t`。连接电力与蜂蜜输入后放入带基因的蜜蜂物品；完成时会在原槽物品上写入测序标记，不需要预留独立输出空间。

::: note
方块测序仪及其手持升级配方都需要当前无来源的 `beecrasy:apite`。整合包未补材料时，钻石配方的手持测序仪是唯一可合成入口。
:::

## 阅读基因结果

测序的价值在于区分显性与潜在遗传信息，并将环境不适、寿命和产量问题追溯到具体个体。先测蜂后，再抽样测雄蜂；如果资源有限，优先保留表现稳定且环境适应范围更大的谱系。

::: warning
当前方块测序仪客户端构造时引用了手持测序仪菜单类型，存在界面类型错误的风险。若打开后界面异常，先改用手持式测序仪，不要反复投入贵重蜜蜂。
:::

[返回蜂会目录](index)
