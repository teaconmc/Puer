---
title: "营业流程"
navigation:
  title: "03 营业流程"
items:
  - "delicacyworld:money_50"
---

# 营业流程

## 开店

店主在管理界面点击 **开始营业**。先执行 15 秒开店倒计时，然后再次检查[搭建餐厅](01_setting_up)中的要求。只有世界时间不晚于 `businessCloseTime`（默认 12000 tick，即正午）时才能开店。

## 参与人

发起人一定是参与人；其他玩家可以在菜单中按名字邀请或通过配置预设。每位参与人都需要已绑定的储物柜。营业期间：

- 参与人的背包会存入各自的储物柜，
- 参与人会被传送到收银机附近，
- 区域内未受邀的玩家会被切换为旁观者模式，结束后恢复，
- 冰箱内容会被复制到临时营业库存，然后冰箱被清空。

## 准备与就绪

在 `PREPARING` 阶段，所有人必须在 `preparingReadyDistanceBlocks`（默认 8 格）内点击 **就绪**。超时时间为 `preparingTimeoutSeconds`（默认 60 秒）。全员就绪后，进入 `preparingCountdownSeconds`（默认 3 秒）倒计时，然后营业正式激活。

如果店主离线，或入口、出口、冰箱、椅子结构缺失，营业会被强制结束。

## 顾客

`delicacyworld:customer` 实体会在入口附近生成。顾客总数在 `mvpCustomerCount` 为正数时使用该覆盖值，否则为 `max(minimumCustomerCount, popularity / customerCountPerPopularity)`，默认值分别是 1 和 5。首批生成 4 位，同时在场上限为 4。

顾客会寻找空闲椅子（`seatSearchTimeoutSeconds`，默认 180 秒），入座后从有效食谱槽位中随机点一道菜。基础/普通/进阶菜品的点单时限分别为 90/120/150 秒。

## 上菜

右键等待中的顾客会打开点单菜单；手持对应熟食右键可直接上菜。2 格内放有对应菜品的托盘也可被作为上菜目标。如果都不满足，餐厅会从临时库存或烹饪设备输出中消耗已准备好的菜品。上错菜会判定订单失败。

订单成功后，顾客会用餐并在 `afterOrderSuccessLeaveSeconds`（默认 60 秒）后离开。正常离开有 10% 概率留下垃圾，愤怒离开为 35%。

## 失败与结算

找座超时、点单超时、座位被堵和被拖走都会使订单失败并扣除 `failedOrderPopularityPenalty`（默认 10）知名度。拖走顾客还会扣除 `mopPopularityPenalty`（默认 10）。

全部顾客结束时进入结算：收入加入餐厅金钱；完美营业增加 `perfectBusinessPopularityBonus`（默认 20）并受星级上限限制；每块垃圾扣除 `garbagePopularityPenalty`（默认 5）；回收设备与托盘；归还参与人背包；当 `clearDeviceInventoryAfterBusiness` 为 true 时清空设备。营业结算界面会显示各品质上菜数、新鲜度与电器支持上菜数、失败数、收入和升级条件。

## 升级

结算后，店主可以在当前知名度和金钱满足下一级需求时点击 **升级**。默认条件：2 星需要 200 知名度和 30000 金钱；3 星需要 300 知名度和 150000 金钱。升级会扣除金钱并设置新的星级。

[返回首页](index)
