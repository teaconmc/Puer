# mission_flag_cat_02
# 卡斯利安·库特 对话flag
# 主堂智库

INCLUDE common_functions.ink

~ setAutoContinue(true)
~ setAutoContinueSpeed(20)

VAR mission_flag_cat_02 = 0
~ mission_flag_cat_02 = getVariable("mission_flag_cat_02")

[DEBUG] 卡斯利安·库特 对话flag
- 当前flag为{mission_flag_cat_02}
* 设定flag为0（未对话）
~ mission_flag_cat_02 = 0
* 设定flag为1（已对话）
~ mission_flag_cat_02 = 1

- 当前flag为{mission_flag_cat_02}
~ putVariable("mission_flag_cat_02", mission_flag_cat_02)
-> DONE