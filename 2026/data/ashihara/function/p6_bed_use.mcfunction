# ============================================================
# 阶段6 · 玩家点了酒狐家那张床
# 触发：advancement ashihara:p6_bed_use / p6_bed_use_item
#   （空手右键床走 default_block_use，手里拿着东西走 item_used_on_block，两个都挂上）
# 用途：天还亮着的时候给一句提示——香草在白天不允许入睡，
#       玩家没法真的"先躺下等天黑"，所以这里只能提示他等到入夜。
# 若当前已经可以睡（夜晚或雷雨），什么都不做，让香草睡眠接手，
# 之后由成就 ashihara:p6_sleep（slept_in_bed）把人送进梦境。
# ============================================================
execute unless entity @s[tag=in_jinja_dream] run function ashihara:p6_bed_clear
execute unless entity @s[tag=in_jinja_dream] run return 0

function ashihara:p6_bed_clear

# 已经入夜 / 雷雨：交给香草睡眠
execute if predicate ashihara:can_sleep run return 0

title @s actionbar {"text":"天还亮着。先在床边等到入夜吧。","color":"yellow"}
tellraw @s {"text":"[现在还不是躺下的时候——等天黑了（或者打雷的时候）再来躺下。]","color":"yellow"}
