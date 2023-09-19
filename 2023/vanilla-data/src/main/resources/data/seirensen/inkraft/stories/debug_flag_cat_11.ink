# mission_flag_cat_11
# 紫珀锭箱子获取状态

INCLUDE common_functions.ink

~ setAutoContinue(true)
~ setAutoContinueSpeed(20)

VAR mission_flag_cat_11 = 0
~ mission_flag_cat_11 = getVariable("mission_flag_cat_11")

[DEBUG] 紫珀锭箱子获取状态话flag
- 当前flag为{mission_flag_cat_11}
* 设定flag为0（未获取）
~ mission_flag_cat_11 = 0
* 设定flag为1（已获取）
~ mission_flag_cat_11 = 1

- 当前flag为{mission_flag_cat_11}
~ putVariable("mission_flag_cat_11", mission_flag_cat_11)
-> DONE