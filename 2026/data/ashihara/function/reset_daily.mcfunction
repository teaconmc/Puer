# 【酒狐线重置】只重置日常线：隐藏线的变量与 tag 全部保留，
# 重新做完日常任务3之后隐藏线会自动接回原来的阶段。
# 用法：/function ashihara:reset_daily
data modify storage minecraft:jinja_reset target set value "daily"
function ashihara:reset_apply
