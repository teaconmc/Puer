---
title: 开发骨架
navigation:
  title: 开发骨架
---

# 开发骨架

## 已声明但未注册的内容

源码定义了若干延迟注册表与持有者，但均未向模组事件总线注册：

| 声明 ID | 类型 | 位置 |
|:---|:---|:---|
| `hurriedness:example_block` | 方块（石头地图色） | `BLOCKS.registerSimpleBlock` |
| `hurriedness:example_block` | 方块物品 | `ITEMS.registerSimpleBlockItem` |
| `hurriedness:example_item` | 食物物品（可随时食用，营养 1，饱和 2） | `ITEMS.registerSimpleItem` |
| `hurriedness:example_tab` | 战斗选项卡之后的创造页，图标为 `example_item` | `CREATIVE_MODE_TABS.register` |

## 被注释掉的内容

模组构造器中：

- `BLOCKS.register(modEventBus)`、`ITEMS.register(modEventBus)`、`CREATIVE_MODE_TABS.register(modEventBus)` —— 所有延迟内容的注册。
- `NeoForge.EVENT_BUS.register(this)` —— 事件总线订阅。
- `modEventBus.addListener(this::addCreative)` —— 创造页内容。
- `modContainer.registerConfig(ModConfig.Type.COMMON, Config.SPEC)` —— 通用配置文件。

客户端类中：

- `container.registerExtensionPoint(IConfigScreenFactory.class, ConfigurationScreen::new)` —— NeoForge 配置界面。
- `onClientSetup` 监听器。

## 配置（未激活）

`Config` 定义了以下键，但从未向模组容器注册 `ModConfigSpec`，因此在当前源码状态下不会生成 `hurriedness-common.toml`：

- `logDirtBlock`（布尔，默认 `true`）
- `magicNumber`（整数，默认 `42`）
- `magicNumberIntroduction`（字符串，默认 "The magic number is... "）
- `items`（物品资源位置列表，默认 `["minecraft:iron_ingot"]`，按物品注册表校验）

## 运行时影响

安装此模组的客户端或服务器会加载类但不执行任何注册：不会激活任何方块、物品、创造页、配置文件或事件处理程序。旧分支或 README 中描述的玩法不属于当前检出。

[返回首页](index)