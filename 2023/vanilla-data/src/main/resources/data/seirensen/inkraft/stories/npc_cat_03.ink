# npc_cat_03
# 帝国海军准将
# 鲍恩·维普斯曼
# 舰长室

INCLUDE common_functions.ink

~ setAutoContinue(true)
~ setAutoContinueSpeed(20)

VAR mission_flag_cat_03 = 0
VAR progress_flag_cat_main = 0 

~ mission_flag_cat_03 = getVariable("mission_flag_cat_03")
~ progress_flag_cat_main = getVariable("progress_flag_cat_main")

VAR player_name = "Player"
~ player_name = getPlayerName()

[与帝国舰队指挥官，海军准将鲍恩·维普斯曼的对话开始]

-> main_prog_divert

==main_prog_divert==
{ progress_flag_cat_main == 2:
    -> quest_divert
 - else:
 { progress_flag_cat_main < 2:
    -> regular_response
    - else: // >2
        -> regular_response_plus
 }
}

==quest_divert==
{ mission_flag_cat_03 == 1:
    -> mission_contact
 - else:
    -> first_contact
}

==first_contact==
~ putVariable("mission_flag_cat_03", 1)
~ putVariable("progress_flag_cat_main", 3)
鲍恩·维普斯曼：{player_name}，你的事迹智库已经和我聊过了，我也从其他船员的聊天中听到过你的名字。
鲍恩·维普斯曼：通过我们船上的大贤者库卡佩修斯最近对这片领域的深入研究，我们已经掌握了制造在浓稠大气中高速飞行的装甲套件的技术。
鲍恩·维普斯曼：不过我们在离开亚空间时，巡洋舰遭到了亚空间造物的入侵，大量补给品被遗失在船舱里。
鲍恩·维普斯曼：向下方实验室中的技术军士报道，他会给你进一步的指示。
鲍恩·维普斯曼：如果你想了解更多关于这艘战舰的事情，只要不涉及帝国的机密，我都会很乐意的向你解答。
-> ending

==background_questions==
鲍恩·维普斯曼：你想了解些什么呢？

//此处背景相关对话

-> ending

==mission_contact==
-> ending

==regular_response==
卡斯利安·库特：向您问好，{player_name}。
-> ending
    
==regular_response_plus==
卡斯利安·库特：向您致以问候，{player_name}。
* 你好。
    -> ending
* 我想了解关于你们的故事。
    -> background_questions

==ending==
[与鲍恩·维普斯曼的对话结束]
-> DONE
