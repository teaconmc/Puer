# npc_cat_01
# 引导机仆
# 祝圣座堂车站的引导机仆

INCLUDE common_functions.ink

~ setAutoContinue(true)
~ setAutoContinueSpeed(40)

VAR mission_flag_cat_01 = 0
VAR progress_flag_cat_main = 0 

~ mission_flag_cat_01 = getVariable("mission_flag_cat_01")
~ progress_flag_cat_main = getVariable("progress_flag_cat_main")

VAR player_name = "Player"
~ player_name = getPlayerName()

[与导引机仆的对话开始]
{ mission_flag_cat_01 == 0:
    -> first_contact
 - else:
 -> normal_contact
}

==first_contact==
导引机仆：启动引导协议……您已登上太阳星域舰队的打击巡洋舰讴哭圣徒号，此区域分划为战机起降区…无关者不得…数据错误……
导引机仆：§k.........§r 各位前来参加朝圣之旅的人，这里是讴哭圣徒号的登陆车站，您将在此受到接待。
导引机仆：您将在路线引导下进入车站正上方的主堂，在那里你可以了解你所需要知道的，也可以在这艘战舰上参观……
导引机仆：讯息传输结束……
~ putVariable("mission_flag_cat_01", 1)
-> ending
==normal_contact==
[1/1] 导引机仆：正在执行接待协议，欢迎回到讴哭圣徒号，{player_name}。
-> ending

==ending==
[与导引机仆的对话结束]
-> DONE