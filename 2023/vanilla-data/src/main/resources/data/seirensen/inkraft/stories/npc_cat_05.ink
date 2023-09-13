# npc_cat_05
# 机械教大贤者
# 知信者——库卡佩修斯
# 主堂下方研究室

INCLUDE common_functions.ink

~ setAutoContinue(true)
~ setAutoContinueSpeed(20)

VAR mission_flag_cat_05 = 0
VAR progress_flag_cat_main = 0 

~ mission_flag_cat_05 = getVariable("mission_flag_cat_05")
~ progress_flag_cat_main = getVariable("progress_flag_cat_main")

VAR player_name = "Player"
~ player_name = getPlayerName()

[与机械教大贤者，库卡佩修斯的对话开始]

-> main_start

==main_start==

库卡佩修斯：基于履行侍奉万机之神欧姆弥赛亚的义务，我将为你解答，{player_name}。
* {progress_flag_cat_main == 4} 我有一些疑问。
-> questions
* \[向大贤者问好\]
-> ending

== questions ==
库卡佩修斯：请提出自己的问题。
* 如何获得紫珀锭？
-> purpur_guide
* 如何获得幻翼膜？
-> membrane_guide
* 暂时没有疑问了，谢谢大贤者的解答。
-> ending

==purpur_guide==
库卡佩修斯：检索舰船货物清单……稍等，在修道院下方的船体结构处，警报系统发现亚空间造物的入侵。
库卡佩修斯：存放[紫珀锭]的容器就在那里。
库卡佩修斯：我评估你此行有82％的概率可以取得这项物品，不过即便被亵渎之物及其异端仆从杀死，你也可以复活。
* 明白了。
-> ending

==membrane_guide==
库卡佩修斯：正在检索舰船战斗报告……在亚空间生物入侵时，有一些名为[幻翼]的奸奇恶魔聚集在舰桥周围。
库卡佩修斯：从它们身上可以提取到名为[幻翼膜]的亚空间生物质材料。
库卡佩修斯：我评估你此行有36％的概率取得这项物品，不过请赞美上古人类的伟大造物，欧姆弥赛亚的知识结晶，其让你仍然可以被复活。
库卡佩修斯：祝你此行顺利。
* 谢谢。
-> ending

==ending==
[与库卡佩修斯的对话结束]
-> DONE