# ============================================================
# 【酒狐线重置 · 共用】清掉酒狐线发放的剧情道具
# 按 item_model / 书名精确匹配，不会误伤外观相同的普通物品。
# 只有「完全重置」会调用本函数。
# ============================================================

# 神社历史笔记（命令碎片）
clear @s powertool:command_rune[minecraft:item_model="ultramarine:blue_book"]
# 咒术碎片（前往樱苑洞穴）
clear @s powertool:command_rune[minecraft:item_model="beecrasy:pheromone"]
# 归途符（阶段5 消耗品 / 阶段6 不消耗）——两种模型都清
clear @s powertool:command_rune[minecraft:item_model="beecrasy:incense_shorter_lifespan"]
clear @s powertool:command_rune[minecraft:item_model="beecrasy:incense_longer_lifespan"]
# 地震监测仪
clear @s minecraft:echo_shard[minecraft:item_model="beecrasy:handheld_sequencer_active"]
# 教堂石碑 / 教堂石碑译文
clear @s minecraft:written_book[minecraft:item_model="transmutatoria:emerald_tablet"]
clear @s minecraft:written_book[minecraft:item_model="cc_mb:note_grid"]
# 雀目物语原本 / 加平良的手记 / しり𛀁的日记 / 门之钥
clear @s minecraft:written_book[minecraft:item_model="neo_mystias_izakaya:misc/recipe_book"]
clear @s minecraft:written_book[minecraft:item_model="ashihara:guidebook"]
clear @s minecraft:written_book[minecraft:item_model="guideme:guide"]
clear @s minecraft:written_book[minecraft:item_model="minecraft:raiser_armor_trim_smithing_template"]
# 筑紫国风土记 部分复印件（没有 item_model，按书名匹配）
clear @s minecraft:written_book[minecraft:written_book_content~{title:"筑紫国风土记 部分复印件"}]
# 借阅的《雀目物语》纸质版
clear @s minecraft:book[minecraft:custom_name="《雀目物语》"]
# 伟晶岩石刻拓印纸
clear @s minecraft:paper[minecraft:custom_name="伟晶岩石刻拓印纸"]

# 武陵调度券属于通用货币（借书赔偿、庄方宜的跑腿费都用它），故意不没收。
# 需要清的话手动执行：/clear @s minecraft:paper[minecraft:item_model="ae2:item_storage_cell_64k"]
