---
title: "搭建餐厅"
navigation:
  title: "01 搭建餐厅"
items:
  - "delicacyworld:restaurant_management_block"
  - "delicacyworld:restaurant_entrance"
  - "delicacyworld:restaurant_exit"
  - "delicacyworld:restaurant_fridge"
  - "delicacyworld:storage_locker"
  - "delicacyworld:restaurant_table"
  - "delicacyworld:restaurant_chair"
---

# 搭建餐厅

## 收银机

`delicacyworld:restaurant_management_block` 是餐厅控制器。第一个放置它的玩家会成为店主，店主和管理员可以管理餐厅。右键打开餐厅管理界面。营业期间该界面会被锁定。

## 入口与出口

对原版门使用入口或出口物品。点击位置正下方必须是门：标记会被放置在门旁，如果上方空间空出，还会在门上方两格放置一个铃铛。营业开始前必须同时存在入口和出口。

如果放置失败，非创造玩家会损失一个物品：该物品会被消耗并掉落在点击位置，而不是被放置。

## 冰箱

在扫描范围内放置冰箱。它有 27 个槽位。营业开始时其内容会复制到临时营业库存，然后冰箱被清空；营业结束后剩余库存归还冰箱，装不下的物品会掉落在附近。

## 储物柜

放置储物柜会将其绑定给第一个放置的玩家，每位玩家只能拥有一个已绑定储物柜。右键打开 27 格个人库存。营业期间储物柜会上锁，并用于保存参与人的随身物品。

## 餐桌与椅子

有橡木、白桦木和红木变体。椅子是记录入座状态的方块实体。默认星级限制为 1/2/3 星分别允许 2/4/8 张桌子和 4/16/64 把椅子。

## 食谱槽位

收银机菜单有 9 个库存槽位，但只有当前星级使用的前几个槽位有效：默认 1/2/3 星分别为 3/6/9 个。只有这些槽位中的 `*_recipe` 物品会成为有效的顾客菜单菜品。

## 开店检查清单

当前 `startBusiness` 按此顺序检查：入口、出口、冰箱、至少一把椅子、至少一个有效食谱、冰箱非空、知名度大于 0，以及世界时间未超过配置的 `businessCloseTime`（默认 12000 tick，即正午）。

[返回首页](index)
