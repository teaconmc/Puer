# npc_cat_08
# 帝国之拳的星际战士 下层船舱

INCLUDE common_functions.ink

~ setAutoContinue(true)
~ setAutoContinueSpeed(40)

VAR player_name = "Player"
~ player_name = getPlayerName()

[与帝国之拳的星际战士的对话开始]

-> main_start

==main_start==
* 你们好，请问这是在？
-> convo
* \[离开\]
-> ending

==convo==
帝国之拳的星际战士：此地遭受了混沌污染，请不要靠近。
* 请问这道闸门后面发生了什么事情？
- 帝国之拳的星际战士：为了你的安全，勿要多问。
* 请问这后方是什么地方
- 帝国之拳的星际战士：船上的船员休息室和货舱，现在已被封锁，我们已经派出一支小队进入解决事端，如有需要进去取物，还请等待一段时间。
* 好吧……
- -> ending


==ending==
[与帝国之拳的星际战士的对话结束]
-> DONE