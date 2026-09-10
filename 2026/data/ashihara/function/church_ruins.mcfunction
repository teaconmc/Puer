# 教堂遗迹触发：已完成石碑线对话 → 永久静默；已看过"古怪感"提示（未核对线索）→ 静默等待
execute if entity @s[tag=jinja_church_done] run advancement revoke @s only ashihara:church_ruins
execute if entity @s[tag=jinja_church_done] run return 0
execute if entity @s[tag=jinja_church_note] run advancement revoke @s only ashihara:church_ruins
execute if entity @s[tag=jinja_church_note] run return 0
# 对话中：静默撤销，避免打断
execute if predicate inkraft:in_any_story run advancement revoke @s only ashihara:church_ruins
execute if predicate inkraft:in_any_story run return 0
# 正常触发
advancement revoke @s only ashihara:church_ruins
inkraft start ashihara:church_ruins
