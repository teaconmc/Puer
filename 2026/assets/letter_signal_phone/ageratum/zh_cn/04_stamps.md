---
title: 邮票
navigation:
  title: 邮票
description: 数据包驱动的邮票变体、五种稀有度及其闪膜效果，以及邮票补充包的运作方式。
---

# 邮票

邮票是本模组的收集层。单一注册物品 `stamp` 把自身身份完全存放在物品数据中——这意味着**整个邮票目录都是数据包驱动的**。

## 变体

变体从 `data/letter_signal_phone/letter_signal_phone/stamps/*.json` 加载。模组自带的集合为：

`default`、`bee_stamp`、`crafting_stamp`、`creeper_stamp`、`diamond_stamp`、`enderman_stamp`、`foxinberry_stamp`、`grass_block_stamp`、`mario_stamp`、`owl_stamp`、`pig_stamp`、`pikachu_stamp`、`sakura_stamp`、`skeleton_stamp`、`sleepfox_stamp`、`terraria_stamp`、`winefox_stamp`、`wolf_stamp`

共 **18 个变体文件**。请注意：其中只有一部分在自带语言文件里有翻译条目（`default`、蜜蜂、工作台、苦力怕、钻石、末影人、草方块、猪、樱花、骷髅、狼），其余会回退到原始名称键。这是当前自带资源的既有事实，而非文档缺漏。

由于变体来自数据，**添加自己的邮票属于数据包改动**，创造页会根据已加载内容重新生成邮票条目。

## 稀有度与闪膜

每个变体都存在五种稀有度，各自绑定一种闪膜效果：

| 稀有度值 | 闪膜效果值 | 提示文本 |
|:---|:---|:---|
| `common` | `none` | （无稀有度行） |
| `rare` | `holographic_stripes` | 稀有 - 镭射条纹闪膜 |
| `high_rare` | `color_crystal` | 高稀有 - 彩晶闪膜 |
| `unique_rare` | `diamond` | 独特稀有 - 钻石闪膜 |
| `rgb_rare` | `rgb_shift` | RGB 稀有 - 流光变色闪膜 |

创造页会列出**每个变体的全部五种稀有度**，因此变体众多的数据包会产生一个很大的创造页。

闪膜由专门的物品模型与渲染器绘制，所以那层光泽是真实的视觉效果，而不只是提示文本上的标签。

## 物品数据键

供数据包与命令作者参考，邮票物品堆把状态存放在这些自定义数据键下：

`lsp_stamp_variant`、`lsp_stamp_name`、`lsp_stamp_gui_texture`、`lsp_stamp_rarity`、`lsp_stamp_foil_effect`，以及记录补充包来源的 `lsp_stamp_pack_origin_player` 与 `lsp_stamp_pack_origin_use`。

默认变体 id 为 `letter_signal_phone:default`，默认 GUI 纹理为 `letter_signal_phone:textures/stamp/stamp.png`。

## 邮票补充包

`stamp_pack` 的定义从 `data/letter_signal_phone/letter_signal_phone/stamp_packs/*.json` 加载；模组自带一个 `default`。

补充包的提示文本会写明：

- `包含 %s 枚随机邮票`
- `每枚邮票有 %s 概率带有稀有度`
- `此补充包每打开 %s 次保底获得稀有邮票` —— 存在**保底计数**，按玩家、按补充包分别记录

打开时回报「已打开邮票补充包。」以此方式获得的邮票会记录来源，其提示文本读作 `由玩家 %s 第 %s 次使用此补充包时获得`——因此抽到的邮票会记住是谁、在第几次开包时抽出的。

普通邮票有合成配方，但邮票补充包**没有**：

<recipe id="letter_signal_phone:stamp"/>

[返回首页](index)
