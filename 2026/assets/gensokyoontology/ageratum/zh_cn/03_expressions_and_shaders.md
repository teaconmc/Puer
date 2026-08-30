---
title: "表达式与着色器"
navigation:
  title: "03 表达式与着色器"
---

# 表达式与着色器

弹幕系统之下垫着两层工程：一套用于描述轨迹的**内嵌表达式语言**，以及一套用于绘制它们的**着色器**。

## 表达式系统是一个真正的注册表

模组创建了自己的注册表 —— 键为 `gensokyoontology:expression`，持有 `IExpressionType`：

```java
public static final ResourceKey<Registry<IExpressionType>> KEY =
    ResourceKey.createRegistryKey(GSKOUtil.key("expression"));
public static final Registry<IExpressionType> REGISTRY = new RegistryBuilder<>(KEY)…
```

已注册的类型：

| 类型 | 类 |
|:---|:---|
| `binary` | `BinaryExpression` |
| `lambda` | `LambdaExpression` |
| `param` | `ParamExpression` |

::: info
**二元运算、lambda 与参数，正是一门小型函数式表达式语言的词汇表。** 结合[弹幕与符卡](02_danmaku_and_spellcards)里那个三轴轨编辑器，这就是弹幕路径成为「被计算出的函数」而不是「固定动画」的方式。

由于它是一个正规的 `Registry`，其他模组原则上可以注册额外的表达式类型。
:::

::: warning
**`ClosureExpression` 有持有者但没有注册。** 源码中是这样：

```java
public static final DeferredHolder<IExpressionType, ClosureExpression> CLOSURE_EXP =
    DeferredHolder.create(KEY, GSKOUtil.key("closure"));
// EXPRESSIONS.register("closure", () -> new ClosureExpression(new ArrayList<>()));
```

`DeferredHolder` 是活的；**紧接其下那行对应的 `register` 调用被注释掉了。** 一个指向未注册 ID 的 `DeferredHolder` 解析不到任何东西。

**本页不断言使用闭包表达式会发生什么** —— 那取决于是否有代码路径会触达 `CLOSURE_EXP`。但这处不对称是真实的，如果闭包表现异常，这一点值得知道：持有者存在，注册不存在。
:::

## 四套着色器程序

`assets/gensokyoontology/shaders/` 下有四对完整的顶点 + 片元着色器：

| 程序 | `.vsh` + `.fsh` | 显然用于 |
|:---|:---:|:---|
| **`master_spark`** | ✓ | 招牌光束攻击 |
| `dream_sphere` | ✓ | 某种球形效果 |
| `light_column` | ✓ | 垂直光柱 |
| `circle_gradient` | ✓ | 径向渐变 |

## 六个 GLSL 包含库

这些着色器共享一个真正的库层，位于 `shaders/include/`：

| 包含库 | 提供 |
|:---|:---|
| `fast_noise_lite.glsl` | 一份 FastNoiseLite 移植 |
| `fbm_lib.glsl` | 分形布朗运动 |
| `fnl_voronoi_2d.glsl` | 二维 Voronoi |
| `fnl_voronois_3d.glsl` | 三维 Voronoi |
| `simple_cellular_noise.glsl` | 细胞噪声 |
| `utils.glsl` | 共享辅助函数 |

::: tip
**对一个内容模组而言，这是相当可观的自定义渲染量。** FBM 加二维与三维 Voronoi 是做程序化、有动态、不重复视觉的工具箱 —— 这是「一束滚动贴图的光」与「一束真正在翻涌的光」之间的差别。

十四个着色器文件对零个数据包文件，很公道地概括了这个模组的精力投向：**渲染与模拟在代码里，数据里什么都没有。**
:::

::: info
文件名 `fnl_voronois_3d.glsl` 里多了一个复数 s（"voronois"）。它是被着色器 `#include` 的路径，因此**引用处必须照样拼写** —— 不是该去规范化的东西。
:::

## 这在游玩中意味着什么

你无法从数据包修改这里的任何东西 —— 没有配方或轨迹 JSON 可供覆盖。表达式注册表是代码层的扩展点，而着色器是资源包可以替换的 GLSL 资产。**两者之中，着色器是包作者唯一能现实地重新主题化的部分。**

[返回首页](index)
