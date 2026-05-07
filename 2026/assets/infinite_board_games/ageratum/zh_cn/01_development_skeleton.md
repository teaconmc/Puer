---
title: 开发骨架
navigation:
  title: 开发骨架
description: 只声明却未注册的示例内容、模板语言文件，以及从未加载的配置键。
---

# 开发骨架

## 已声明但未注册

源码定义了若干延迟注册表与持有者，但没有任何一个被挂到模组事件总线上：

| 声明 ID | 类型 | 声明位置 |
|:---|:---|:---|
| `infinite_board_games:example_block` | 方块（石头地图色） | `BLOCKS.registerSimpleBlock` |
| `infinite_board_games:example_block` | 方块物品 | `ITEMS.registerSimpleBlockItem` |
| `infinite_board_games:example_item` | 食物物品（可随时食用，营养 1，饱和度系数 2） | `ITEMS.registerSimpleItem` |
| `infinite_board_games:example_tab` | 置于战斗选项卡之后的创造分页，图标为 `example_item` | `CREATIVE_MODE_TABS.register` |

由于这些 ID 从未被注册，它们无法获取、无法用命令给予、无法被数据包引用，也不会出现在创造物品栏中。

## 被注释掉的内容

模组构造器中：

- `BLOCKS.register(modEventBus)`、`ITEMS.register(modEventBus)`、`CREATIVE_MODE_TABS.register(modEventBus)` —— 所有延迟内容的注册。
- `NeoForge.EVENT_BUS.register(this)` —— 游戏事件总线订阅。
- `modEventBus.addListener(this::commonSetup)` —— 通用初始化监听器。
- `modEventBus.addListener(this::addCreative)` —— 把方块物品加入原版建筑方块分页。
- `modContainer.registerConfig(ModConfig.Type.COMMON, Config.SPEC)` —— 通用配置文件。

客户端类中：

- `container.registerExtensionPoint(IConfigScreenFactory.class, ConfigurationScreen::new)` —— NeoForge 配置界面。
- `onClientSetup` 上的 `@SubscribeEvent` 注解，因此客户端初始化监听器永不触发。

`onServerStarting` 的 `@SubscribeEvent` 同样处于注释状态，从不会被调用。

## 配置（未激活）

`Config` 构建了一份 `ModConfigSpec`，包含下列键，但该规格从未向模组容器注册，因此在当前源码状态下**不会生成 `infinite_board_games-common.toml`**：

| 键 | 类型 | 默认值 | 说明 |
|:---|:---|:---|:---|
| `logDirtBlock` | 布尔 | `true` | "Whether to log the dirt block on common setup" |
| `magicNumber` | 整数 | `42` | 范围 `0` – `Integer.MAX_VALUE` |
| `magicNumberIntroduction` | 字符串 | `The magic number is... ` | 幻数日志行的前缀 |
| `items` | 字符串列表 | `["minecraft:iron_ingot"]` | 按物品注册表校验，允许为空 |

由于 `commonSetup` 从不运行，即使手工放入配置文件，这些值也永远不会被读取。

## 语言文件

随包发布的唯一资源是模板 `assets/infinite_board_games/lang/en_us.json`，内含 MDK 占位字符串：

- `itemGroup.infinite_board_games` → "Example Mod Tab"
- `block.infinite_board_games.example_block` → "Example Block"
- `item.infinite_board_games.example_item` → "Example Item"
- 另有七个供配置界面使用的 `infinite_board_games.configuration.*` 键。

有两处不一致值得记录：

- 创造分页使用的标题键是 `itemGroup.examplemod`，**而非** `itemGroup.infinite_board_games`。即便该分页被注册，其标题也会渲染成未翻译的原始键，而随包的 `itemGroup.infinite_board_games` 字符串则始终不被使用。
- **没有 `zh_cn.json`**，因此一旦将来注册了内容，其名称会回退到上述英文占位字符串。

## 运行时影响

安装此模组的客户端或服务器会加载类但不执行任何注册：不会激活任何方块、物品、创造分页、实体、命令、配方、按键、配置文件或事件处理程序。模组会出现在模组列表中，除此之外什么也不做。

`README.md` 与模组描述中所述的数据驱动桌游 API 不属于本次检出，不得当作当前行为。

[返回首页](index)
