# ============================================================
# 【调试用】重置阶段5「沉没建筑群」的全部探索状态
# 用法：/function ashihara:debug_reset_under
# 本函数只做两件"原版就能做"的事（清 tag、撤销成就），
# 引擎变量交给剧本 ashihara:debug_reset 去清——
# 这样就不依赖 inkraft variables 那条子命令（部分版本没有它）。
# ============================================================

# 1) 清 tag
tag @s remove in_jinja_under
tag @s remove jinja_under_landing
tag @s remove jinja_under_kagura
tag @s remove jinja_under_treasury
tag @s remove jinja_under_weaving
tag @s remove jinja_under_weaving_env
tag @s remove jinja_under_lab
tag @s remove jinja_under_lab_env
tag @s remove jinja_under_flush
tag @s remove jinja_under_inlet
tag @s remove jinja_under_sump
tag @s remove jinja_under_building
tag @s remove in_jinja_kanden
tag @s remove fhtagn

# 2) 撤销位置成就（成就还挂着的时候不会再次触发）
advancement revoke @s only ashihara:under_landing
advancement revoke @s only ashihara:under_kagura
advancement revoke @s only ashihara:under_building
advancement revoke @s only ashihara:under_weaving_env
advancement revoke @s only ashihara:under_lab_env
advancement revoke @s only ashihara:under_inlet
advancement revoke @s only ashihara:under_sump
advancement revoke @s only ashihara:honden_door_close

# 3) 清引擎变量（并回一句反馈）
inkraft start ashihara:debug_reset
