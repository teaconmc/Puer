# 《普洱·甲辰茶会》目录结构

适配 TeaCon 甲辰的普洱有下列结构：

*待补全*


## 我应该把文件放哪？

  - 资源包相关内容放入 `assets`。
  - 数据包相关内容放入 `data`。
  - 配置文件放入 `config`。
    - 这包括此前需要放在 serverconfig 下的服务器配置文件！[NeoForge 自 20.4.21-beta 始会读取 config 下的服务器侧配置文件](https://github.com/neoforged/NeoForge/pull/376)，原有的存档级别的 `serverconfig` 功能仍然保留，可用于覆盖全局配置。

## 目录树状图示例

使用 https://tree.nathanfriend.io/ 生成。

```
PUER/
└── jiachen/
    ├── config/ 
    │   ├── fml.toml
    │   ├── forge-client.toml
    │   ├── forge-server.toml
    │   └── powertool-server.toml
    ├── assets/
    │   ├── teacon_jiachen/
    │   │   └── lang/
    │   │       └── zh_cn.json
    │   └── chromeball/
    ├── data/
    │   └── teacon_jiachen/
    │       └── recipe/
    │           └── new_recipe.json
    ├── options.txt
    └── pack.mcmeta
```
