# 【调试】专门用来验证"函数里调用 inkraft variables 会不会导致整份函数加载失败"
# 用法：/function ashihara:debug_test_vars
#   · 能补全并能执行 → inkraft variables 在函数里没问题
#   · 报"未知的函数" → 这一行让整份函数没被加载，本阶段的所有触发函数
#     也都是因为同样的原因失效（我们已经把 inkraft variables 从触发路径里去掉了）
inkraft variables set under_spot landing
