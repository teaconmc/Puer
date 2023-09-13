# mission_flag_cat_01
# 车站机仆 对话flag
# 车站

INCLUDE common_functions.ink

~ setAutoContinue(true)
~ setAutoContinueSpeed(20)

VAR mission_flag_cat_01 = 0
~ mission_flag_cat_01 = getVariable("mission_flag_cat_01")

[DEBUG] 车站机仆 对话flag
- 当前flag为{mission_flag_cat_01}
* 设定flag为0（未对话）
~ mission_flag_cat_01 = 0
* 设定flag为1（已对话）
~ mission_flag_cat_01 = 1

- 当前flag为{mission_flag_cat_01}
~ putVariable("mission_flag_cat_01", mission_flag_cat_01)
-> DONE