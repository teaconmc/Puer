# 这个 mcfunction 是用来偷懒的。一些需要确保全局生效的东西都直接扔这里了。
# 小心别把基岩版的 gamerule 复制进来了！会导致 mcfunction parser 报错的，进而让整个 mcfunction 都不运行。

# 禁止幻翼（Phantom）因玩家缺少睡眠而生成
gamerule spawn_phantoms false
# 禁止野外刷怪。
gamerule spawn_mobs false
# 禁止刷流浪商人。
gamerule spawn_wandering_traders false
gamerule spawn_monsters false
gamerule spawn_patrols false

# 死亡时保留背包内物品
gamerule keep_inventory true
# 关闭玩家获取进度后的全服聊天广播——Mod 一多这个就有刷屏嫌疑了
gamerule show_advancement_messages false
# 打开方块掉落。强行关闭这个会影响不少 Mod 的功能展示。
gamerule block_drops true

# 关掉下界
gamerule allow_entering_nether_using_portals false
# 命令方块吵死了
gamerule command_block_output false
# 禁用火焰更新
gamerule fire_spread_radius_around_player 0
# 精确重生点
gamerule respawn_radius 0
# 关掉藤蔓生长
gamerule spread_vines false
# 不要积雪
gamerule max_snow_accumulation_height 0


say 欢迎来到模组开发茶会2026
