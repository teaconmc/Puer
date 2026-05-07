---
title: "蜂笛音乐"
navigation:
  title: "10 蜂笛音乐"
items:
  - "beecrasy:buzzer"
  - "beecrasy:beedibox"
  - "beecrasy:flight_of_the_bumble_bee"
  - "beecrasy:flight_of_the_bumble_bee_bits"
  - "beecrasy:seikilos_epitaph"
---

# 蜂笛音乐

<block id="beecrasy:buzzer"/>

<recipe id="beecrasy:crafting/buzzer"/>

蜂鸣器是独立的类音符盒方块，不会接入蜂笛盒的 MIDI/唱片播放。保持上方为空气；右键会循环音高并发声，左键可直接发声，红石信号的上升沿也会触发。配方需要当前无产出来源的 `beecrasy:bumblebee_jasper`。

<block id="beecrasy:beedibox"/>

<recipe id="beecrasy:crafting/beedibox"/>

蜂笛盒配方需要当前无产出来源的 `beecrasy:apite`。取得方块后可播放模组唱片：当前注册了《野蜂飞舞》、其 bit 音色版本和《塞基洛斯墓志铭》三张不可堆叠唱片。把蜂笛盒放在易听见的位置，插入唱片会立即开始播放，不需要额外红石或第二次触发。

::: note
调试命令也能直接触发 MIDI 行为，但它不属于正常演奏流程，而且当前没有权限限制。公共服务器应限制命令，仅通过方块和唱片提供音乐功能。
:::

[返回蜂会目录](index)
