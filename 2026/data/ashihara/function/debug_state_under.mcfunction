# ============================================================
# 【调试用】打印阶段5 地下探索的当前状态
# 用法：/function ashihara:debug_state_under
# ============================================================
tellraw @s [{"text":"[阶段5调试] ","color":"gold","bold":true},{"text":"in_jinja_under：","color":"gray"},{"selector":"@s[tag=in_jinja_under]","color":"green"},{"text":"（空＝没有这个 tag）","color":"dark_gray"}]

execute if entity @s[tag=in_jinja_under] run tellraw @s {"text":"  ✔ 在探索状态中（能被地下触发命中）","color":"green"}
execute unless entity @s[tag=in_jinja_under] run tellraw @s {"text":"  ✘ 没有 in_jinja_under —— 所有地下触发都会直接返回，先确认是不是被酒狐送下去的","color":"red"}

execute if predicate ashihara:in_under_story run tellraw @s {"text":"  · 正在播 ashihara:under_ruins","color":"aqua"}
execute if predicate inkraft:in_any_story run tellraw @s {"text":"  · 当前有剧本在运行","color":"yellow"}
execute unless predicate inkraft:in_any_story run tellraw @s {"text":"  · 当前没有剧本在运行","color":"dark_gray"}

tellraw @s {"text":"--- 各区域是否已看过 ---","color":"gold"}
execute if entity @s[tag=jinja_under_landing] run tellraw @s {"text":"  ✔ 沉没的参道","color":"green"}
execute if entity @s[tag=jinja_under_kagura] run tellraw @s {"text":"  ✔ 神乐殿","color":"green"}
execute if entity @s[tag=jinja_under_treasury] run tellraw @s {"text":"  ✔ 神宝库","color":"green"}
execute if entity @s[tag=jinja_under_weaving] run tellraw @s {"text":"  ✔ 機殿（漆箱）","color":"green"}
execute if entity @s[tag=jinja_under_weaving_env] run tellraw @s {"text":"  · 機殿环境段","color":"dark_gray"}
execute if entity @s[tag=jinja_under_lab] run tellraw @s {"text":"  ✔ 研究室（唐柜）","color":"green"}
execute if entity @s[tag=jinja_under_lab_env] run tellraw @s {"text":"  · 研究室环境段","color":"dark_gray"}
execute if entity @s[tag=jinja_under_flush] run tellraw @s {"text":"  ✔ 水冲廊道","color":"green"}
execute if entity @s[tag=jinja_under_inlet] run tellraw @s {"text":"  ✔ 暗流水口","color":"green"}
execute if entity @s[tag=jinja_under_sump] run tellraw @s {"text":"  ✔ 深潭竖井","color":"green"}
execute if entity @s[tag=jinja_under_building] run tellraw @s {"text":"  · 最大洞厅氛围段","color":"dark_gray"}

tellraw @s {"text":"--- 引擎变量 ---","color":"gold"}
tellraw @s {"text":"  上面的 tag 就是各区域的完成状态；sec_under_progress 等变量可在剧本里用 getVariable 读取。","color":"gray"}
