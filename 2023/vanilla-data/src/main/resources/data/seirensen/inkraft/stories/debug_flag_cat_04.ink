# mission_flag_cat_04
# 海森·卡山德 对话flag
# 技术军士

INCLUDE common_functions.ink

~ setAutoContinue(true)
~ setAutoContinueSpeed(20)

VAR mission_flag_cat_04 = 0
~ mission_flag_cat_04 = getVariable("mission_flag_cat_04")

[DEBUG] 海森·卡山德 对话flag
- 当前flag为{mission_flag_cat_04}
* 设定flag为0（未对话）
~ mission_flag_cat_04 = 0
* 设定flag为1（已对话）
~ mission_flag_cat_04 = 1

- 当前flag为{mission_flag_cat_04}
~ putVariable("mission_flag_cat_04", mission_flag_cat_04)
-> DONE