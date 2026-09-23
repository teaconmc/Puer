# ============================================================
# 阶段6 · 谒见厅：走到大门前（位置成就）
# 区域：94,65,-1316 ~ 107,84,-1307
# 门槛：tag in_jinja_meeting（入梦后打上，结局传送时移除）
# ============================================================
execute unless entity @s[tag=in_jinja_meeting] run advancement revoke @s only ashihara:p6_door
execute unless entity @s[tag=in_jinja_meeting] run return 0

execute if predicate inkraft:in_any_story run advancement revoke @s only ashihara:p6_door
execute if predicate inkraft:in_any_story run function ashihara:under_busy_hint
execute if predicate inkraft:in_any_story run return 0

advancement revoke @s only ashihara:p6_door
inkraft start ashihara:yog_sothoth
