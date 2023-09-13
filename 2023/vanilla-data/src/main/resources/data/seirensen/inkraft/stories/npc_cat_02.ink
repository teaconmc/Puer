# npc_cat_02
# 帝国之拳第八连的智库，讴哭圣徒号上的星际战士连队临时指挥官
# 卡斯利安·库特
# 主堂

INCLUDE common_functions.ink

~ setAutoContinue(true)
~ setAutoContinueSpeed(20)

VAR mission_flag_cat_02 = 0
VAR progress_flag_cat_main = 0 

~ mission_flag_cat_02 = getVariable("mission_flag_cat_02")
~ progress_flag_cat_main = getVariable("progress_flag_cat_main")

VAR player_name = "Player"
~ player_name = getPlayerName()

[与帝国之拳第八连智库，讴哭圣徒号星际战士连队临时指挥官卡斯利安·库特的对话开始]
-> main_prog_divert


==main_prog_divert==
{ progress_flag_cat_main >= 2:
    -> completed
 - else:
 { progress_flag_cat_main >= 1:
    -> in_mission
    - else: // ==0
        -> quest_divert
 }
}

==quest_divert==
{ mission_flag_cat_02 == 1:
    -> mission_contact
 - else:
    -> first_contact
}


==first_contact==
~ putVariable("mission_flag_cat_02", 1)
卡斯利安·库特：你是来领取任务的新人吗？
+ 我能为你们帮些什么忙吗？
    -> mission_briefing
* 我能否询问一些关于你们和这艘造型奇怪的战舰的事情？
    -> background

==background==
卡斯利安·库特：嗯，关于这艘战舰以及我和我们帝国之拳第八连的兄弟们，是被一场猛烈的亚空间风暴卷入到这个世界的。
卡斯利安·库特：在我们的机械教贤者的努力之下，我们已经开始逐渐适应并理解了这一维度的一些物理性质，我们坚信这个维度应该是来自遥远的旧夜，甚至更为遥远的时代的人类造物。
卡斯利安·库特：我们需要找到返回我们的宇宙的方法，但是在此之前，我们还需扩大我们的入手，并在此站稳脚跟，年轻人，你会接受帝皇的指引，助我们一臂之力吗？
-> first_contact

==mission_contact==
卡斯利安·库特：准备好接受指派了吗？
* 准备好了。
    -> mission_briefing
* 容我再想想。
    -> mission_declined

==mission_briefing==
~ putVariable("mission_flag_cat_02", 1)
卡斯利安·库特：前往巡洋舰上的修道院吧，修道院的机械神甫和占卜师需要你的帮助
卡斯利安·库特：回来时请帮我带上一件飞行套件，我们称呼其为[羽翼]；一件用于附魔的[亚麻长衫]；还有一份[灵风精髓]，这是星语者们占卜所需的物品。
* \[接受任务\]
    -> mission_accepted 
* \[拒绝任务\]
    -> mission_declined
    
==mission_accepted==
卡斯利安·库特：我将留在这里，静候佳音，感谢你的帮助。
~ putVariable("progress_flag_cat_main", 1)
-> ending

==mission_declined==
卡斯利安·库特：圣所的大门一直向有意者敞开，若是不便，也可择日再来。
-> ending

==in_mission==
~ temp has_wings = hasItemStack("\{id:\"locusazzurro_icaruswings:feather_wings\",Count:1\}")
~ temp has_linen = hasItemStack("\{id:\"locusazzurro_icaruswings:linen_cloak\",Count:1\}")
~ temp has_essence = hasItemStack("\{id:\"locusazzurro_icaruswings:zephir_essence\",Count:1\}")
卡斯利安·库特：年轻的朝圣者啊，捎来了什么好消息吗？
* {has_wings && has_linen && has_essence} 这三件事，我已置办妥当。
    -> item_turnin
* 我还未完成您给我的指派。
    -> no_item

==item_turnin==
~ putVariable("progress_flag_cat_main", 2)
~ takeItemStack("\{id:\"locusazzurro_icaruswings:feather_wings\",Count:1\}")
~ takeItemStack("\{id:\"locusazzurro_icaruswings:linen_cloak\",Count:1\}")
~ takeItemStack("\{id:\"locusazzurro_icaruswings:zephir_essence\",Count:1\}")
卡斯利安·库特：做的很好，我的连队兄弟们一直在注视着你的成果。稍息片刻，我有一个比较重要的请求。
卡斯利安·库特：我们这艘巡洋舰的舰长希望指派你完成一个比较重要的任务。
卡斯利安·库特：你可以去舰长室找他，舰长室就在主堂的正上方，舰桥的至高处，希望你能和他合作愉快。
卡斯利安·库特：愿神皇保佑你
-> ending

==no_item==
卡斯利安·库特：目视前方，也许你遇到了什么困难，询问一下修道院的机械神甫吧，他们会给你解答。
-> ending

==completed==
卡斯利安·库特：（正在诵念经文……）啊，抱歉我分神了，{player_name}。
-> ending

==ending==
[与星际战士智库卡斯利安·库特的对话结束]
-> DONE