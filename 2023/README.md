# 普洱（PUER / Packed User Exhibition Resources）2023 目录结构

适配 TeaCon 2023 的普洱分为以下三部分：

  1. `vanilla-assets`，一个标准的 Gradle 项目，用于将 TeaCon 2023 所需要的资源包（Resource Pack）打包成基于 [FML low-code language provider][ref-1] 的「模组」文件。
  2. `vanilla-data`，一个标准的 Gradle 项目，用于将 TeaCon 2023 所需要的数据包（Data Pack）打包成基于 [FML low-code language provider][ref-1] 的「模组」文件。
  2. `shared`，用于放置展示服务器及配套客户端所需的配置文件及其他脚本等。其目录结构应与 game directory（即俗称的 `.minecraft` 目录）一致。


[ref-1]: https://github.com/MinecraftForge/MinecraftForge/pull/8633

## 我应该把文件放哪？

  - 资源包相关内容放入 `vanilla-assets/src/main/resources/assets`。
  - 数据包相关内容放入 `vanilla-data/src/main/resources/data`。
  - 配置文件等需要放入游戏根目录（`.minecraft`）下的内容放入 `shared/`。

## 目录树状图示例

使用 https://tree.nathanfriend.io/ 生成。

```
PUER/
└── 2023/
    ├── shared/
    │   ├── config/
    │   │   ├── fml.toml
    │   │   └── forge-client.toml
    │   ├── world/
    │   │   └── serverconfig/
    │   │       ├── forge-server.toml
    │   │       └── powertool-server.toml
    │   └── options.txt
    ├── vanilla-assets/
    │   ├── src/
    │   │   └── main/
    │   │       └── resources/
    │   │           ├── META-INF/
    │   │           │   └── mods.toml
    │   │           ├── assets/
    │   │           └── pack.mcmeta
    │   └── build.gradle
    └── vanilla-data/
        ├── src/
        │   └── main/
        │       └── resources/
        │           ├── META-INF/
        │           │   └── mods.toml
        │           ├── data/
        │           └── pack.mcmeta
        └── build.gradle
```

