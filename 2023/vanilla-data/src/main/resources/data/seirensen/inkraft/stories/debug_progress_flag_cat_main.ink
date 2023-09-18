# progress_flag_cat_main
# 鸡翅主线进度flag
INCLUDE common_functions.ink

~ setAutoContinue(true)
~ setAutoContinueSpeed(20)

VAR progress_flag_cat_main = 0
~ progress_flag_cat_main = getVariable("progress_flag_cat_main")

[DEBUG] 鸡翅主线进度flag
- 当前flag为{progress_flag_cat_main}
* 设定flag为0（未开始）
~ progress_flag_cat_main = 0
* 设定flag为1（智库第一次介绍对话 - 基础任务组开始）
~ progress_flag_cat_main = 1
* 设定flag为2（所有基础任务完成）
~ progress_flag_cat_main = 2
* 设定flag为3（完成舰长第一次介绍对话）
~ progress_flag_cat_main = 3
* 设定flag为4（完成军士第一次对话 - 高级羽翼任务组开始）
~ progress_flag_cat_main = 4
* 设定flag为5（所有高级羽翼任务完成）
~ progress_flag_cat_main = 5

- 当前flag为{progress_flag_cat_main}
~ putVariable("progress_flag_cat_main", progress_flag_cat_main)
-> DONE