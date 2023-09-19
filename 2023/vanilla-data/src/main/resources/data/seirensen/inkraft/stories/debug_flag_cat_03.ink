# mission_flag_cat_03
# 鲍恩·维普斯曼 对话flag
# 舰长

INCLUDE common_functions.ink

~ setAutoContinue(true)
~ setAutoContinueSpeed(20)

VAR mission_flag_cat_03 = 0
~ mission_flag_cat_03 = getVariable("mission_flag_cat_03")

[DEBUG] 鲍恩·维普斯曼 对话flag
- 当前flag为{mission_flag_cat_03}
* 设定flag为0（未对话）
~ mission_flag_cat_03 = 0
* 设定flag为1（已对话）
~ mission_flag_cat_03 = 1

- 当前flag为{mission_flag_cat_03}
~ putVariable("mission_flag_cat_03", mission_flag_cat_03)
-> DONE