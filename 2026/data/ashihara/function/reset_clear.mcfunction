# ============================================================
# 【酒狐线重置 · 共用】清 tag / 撤销触发成就 / 把人挪回安全位置
# 由剧本 ashihara:jinja_reset 调用，必须以玩家身份执行（@s）；
# 不要从控制台调用，也不要在函数里写 inkraft variables（服务器上会整份函数加载失败）。
# ============================================================

# 1) 先把人送回酒狐身边。
#    人要是还站在触发盒里，位置成就下一 tick 就会重新触发，把刚清掉的剧情又放一遍；
#    重置阶段5 时人也可能被留在沉没建筑群里上不来。
execute at @e[tag=fox_proxy,limit=1] run tp @s ~ ~ ~

# 2) 清掉酒狐线用到的全部玩家 tag
#    （fox_proxy 是交互实体身上的 tag，不是玩家 tag，这里不动它）
tag @s remove fhtagn
tag @s remove in_expl_seal
tag @s remove in_jinja_explore
tag @s remove in_jinja_kanden
tag @s remove in_jinja_under
tag @s remove in_jinja_dream
tag @s remove in_jinja_meeting
tag @s remove in_jinja_yagoromo
tag @s remove jinja_church_done
tag @s remove jinja_church_note
tag @s remove jinja_phase2
tag @s remove jinja_seal_cavern_done
tag @s remove jinja_under_building
tag @s remove jinja_under_flush
tag @s remove jinja_under_inlet
tag @s remove jinja_under_kagura
tag @s remove jinja_under_lab
tag @s remove jinja_under_lab_env
tag @s remove jinja_under_landing
tag @s remove jinja_under_sump
tag @s remove jinja_under_treasury
tag @s remove jinja_under_weaving
tag @s remove jinja_under_weaving_env

# 3) 撤销全部位置/交互触发成就（成就挂着的时候不会再次触发）
advancement revoke @s only ashihara:daily
advancement revoke @s only ashihara:cave_sakura
advancement revoke @s only ashihara:church_ruins
advancement revoke @s only ashihara:honden_door_close
advancement revoke @s only ashihara:seal_cavern
advancement revoke @s only ashihara:well_kapera
advancement revoke @s only ashihara:under_landing
advancement revoke @s only ashihara:under_kagura
advancement revoke @s only ashihara:under_building
advancement revoke @s only ashihara:under_weaving_env
advancement revoke @s only ashihara:under_lab_env
advancement revoke @s only ashihara:under_inlet
advancement revoke @s only ashihara:under_sump
advancement revoke @s only ashihara:p6_sleep
advancement revoke @s only ashihara:p6_door
advancement revoke @s only ashihara:p6_bed_use
advancement revoke @s only ashihara:p6_bed_use_item

# 4) 把本殿的门关回去（阶段6 的重置会在后面再打开它），
#    免得重置之后一直敞着门，别人误入。
#    本殿区块没加载时这条会静默失败，需要的话回本殿附近再执行一次 reset。
clone 138 97 -1187 142 100 -1185 138 109 -1187

# 5) 关掉樱苑洞穴的特殊调度，让酒狐回到平常的拜殿/餐桌/樱树下轮换。
#    （不关的话，重置到阶段1以后酒狐可能一直待在樱苑洞穴，
#      日常菜单在她那个位置上没有任何可用选项。）
function ashihara:fox_investigate_sakura_cave_fin

# 6) 把谒见厅的投影仪复位成原本的分形（正体）形象。
#    玩家在梦境里选了美少女立绘又中途重置时，世界会一直停在立绘上。
function ashihara:p6_shader_reset
