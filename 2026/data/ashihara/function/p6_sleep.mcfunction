# ============================================================
# 阶段6 · 入梦：在酒狐家睡下 → 传送到犹格索托斯的谒见厅
# 触发：advancement ashihara:p6_sleep（minecraft:slept_in_bed）
# 门槛：tag in_jinja_dream（阶段6 与酒狐谈过门之钥后打上）
# 任何地方睡觉都会触发成就，所以这里必须用 tag 卡住。
# ============================================================
execute unless entity @s[tag=in_jinja_dream] run advancement revoke @s only ashihara:p6_sleep
execute unless entity @s[tag=in_jinja_dream] run return 0

execute if predicate inkraft:in_any_story run advancement revoke @s only ashihara:p6_sleep
execute if predicate inkraft:in_any_story run function ashihara:under_busy_hint
execute if predicate inkraft:in_any_story run return 0

# 入梦：换 tag（in_jinja_dream → in_jinja_meeting），清状态效果，送到谒见厅
advancement revoke @s only ashihara:p6_sleep
tag @s remove in_jinja_dream
tag @s add in_jinja_meeting
effect clear @s
execute in minecraft:overworld run tp @s 79.94 67.00 -1243.02
inkraft start ashihara:meeting_hall
