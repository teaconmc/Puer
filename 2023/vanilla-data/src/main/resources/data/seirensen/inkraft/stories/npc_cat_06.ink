# npc_cat_06
# 机械神甫————海顿·阿方索

INCLUDE common_functions.ink

~ setAutoContinue(true)
~ setAutoContinueSpeed(40)

VAR player_name = "Player"
~ player_name = getPlayerName()

[与机械神甫海顿·阿方索的对话开始]

-> main_start

==main_start==

海顿·阿方索：{player_name}，欢迎游览此处，我作为万机之神的仆从，向作为凡人信众的您问好。
* 我能否提一些问题。
-> questions
* \[致以敬意\]
-> ending

== questions ==
海顿·阿方索：请提出问题，我的存储湿件将会开始检索。
* 关于飞行套件\[羽翼\]，如何将其制作出来？
-> wings_guide
* 暂时没有其他问题了，感谢解答。
-> ending

==wings_guide==
海顿·阿方索：\[羽翼\]是一种可以为凡人提供大气飞行的机器，其需要使用羽毛扎、蜂蜡和木板使用简易工作台制造，是一种我们看来及其传统和不符教义，但是可靠的交通工具。
海顿·阿方索：从我身边的供货箱中可以获得材料，我也在此处放置了一些题词牌，对其制造流程的方式进行了简单介绍。
* 感谢解答。
-> ending

==ending==
[与机械神甫海顿·阿方索的对话结束]
-> DONE