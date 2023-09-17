# npc_cat_04
# 帝国之拳第八连的技术军士
# 海森·卡山德
# 研究室

INCLUDE common_functions.ink

~ setAutoContinue(true)
~ setAutoContinueSpeed(40)

VAR mission_flag_cat_04 = 0
VAR progress_flag_cat_main = 0 

~ mission_flag_cat_04 = getVariable("mission_flag_cat_04")
~ progress_flag_cat_main = getVariable("progress_flag_cat_main")

VAR player_name = "Player"
~ player_name = getPlayerName()

[与帝国之拳第八连技术军士，海森·卡山德的对话开始]

-> main_prog_divert

==main_prog_divert==
{ progress_flag_cat_main == 3:
    -> quest_divert
 - else:
 { progress_flag_cat_main == 4:
    -> in_mission
  - else:
    -> regular_response
 }
}

==quest_divert==
{ mission_flag_cat_04 == 1:
    -> mission_contact
 - else:
    -> first_contact
}

==first_contact==
~ putVariable("mission_flag_cat_04", 1)
海森·卡山德：{player_name}，我收到一条简讯，船长为你指派了一个任务，我将告知你这项任务的细节。
海森·卡山德：我们需要有人协助提供一些重要材料，其中回收[紫珀锭]的任务是相对比较棘手的任务。
海森·卡山德：我们的部队正在船头和混沌势力激战暂时无暇助我获得这些材料。
海森·卡山德：因而我们只能拜托你，年轻的朝圣者。除此之外，我们还需要一些[碳素钢锭]和[幻翼膜]。
海森·卡山德：在档案库里进行研究的的机械教大贤者，他是我们这里对这些奇异物品认知最深入的学者，也是战舰战斗档案和货物清单的管理者，他可以解答你的疑问。
海森·卡山德：如果你做好了准备，请回来告知我。
-> ending

==mission_contact==
海森·卡山德：准备好接受指派了吗？
* 准备好了。
    -> mission_briefing
* 还没有。
    -> mission_declined
    
==mission_briefing==
~ putVariable("progress_flag_cat_main", 4)
海森·卡山德：很好，我的实验目前需要以下材料————五块[碳素钢锭]、一片[幻翼膜]和一块[紫珀锭]。
海森·卡山德：有关上述材料的信息皆在大贤者那里保存，祝你好运。
-> ending

==mission_declined==
海森·卡山德：智者千虑，若是没有做足准备，也可择日再来。
-> ending


==in_mission==
~ temp has_purpur = hasItemStack("\{id:\"locusazzurro_icaruswings:purpur_ingot\",Count:1\}")
~ temp has_steel = hasItemStack("\{id:\"locusazzurro_icaruswings:steel_ingot\",Count:5\}")
~ temp has_membrane = hasItemStack("\{id:\"minecraft:phantom_membrane\",Count:1\}")
海森·卡山德：材料收集的如何？
* {has_purpur && has_steel && has_membrane} 我已经完成物品的收集。
    -> item_turnin
* 还在置办中。
    -> no_item

==item_turnin==
~ putVariable("progress_flag_cat_main", 5)
~ takeItemStack("\{id:\"locusazzurro_icaruswings:purpur_ingot\",Count:1\}")
~ takeItemStack("\{id:\"locusazzurro_icaruswings:steel_ingot\",Count:5\}")
~ takeItemStack("\{id:\"minecraft:phantom_membrane\",Count:1\}")
~ putVariable("mission_flag_cat_11", 0)
海森·卡山德：感谢你为帝国做出的贡献，你将会获得一副我们制作的改进型飞行组件，作为你对帝皇献上忠诚的犒赏。
海森·卡山德：如果你可以回收更多的[紫珀锭]，我将可以批量制造这一型号的飞行组件，你也可以再领一件，如果你有需要的话。
海森·卡山德：好的，年轻的朝圣者，去给我们的智库汇报情况吧，你也该休息一下了，辛苦了。
-> wing_choosing


==no_item==
海森·卡山德：看来你还有些纰漏，再去收集吧。
-> ending


==wing_choosing==
海森·卡山德：以下是我们开发的各种型号，你可以随意挑选一件。
* 战斗型
    ~ giveItemStack("\{id:\"locusazzurro_icaruswings:ikaros_wings\",Count:1\}")
* 电子战型
    ~ giveItemStack("\{id:\"locusazzurro_icaruswings:nymph_wings\",Count:1\}")
* 速度型
    ~ giveItemStack("\{id:\"locusazzurro_icaruswings:astraea_wings\",Count:1\}")

- 海森·卡山德：希望它可以祝你一臂之力
-> ending


==regular_response==
~ temp has_material = hasItemStack("\{id:\"locusazzurro_icaruswings:purpur_ingot\",Count:1\}")
海森·卡山德：你好，{player_name}。
* {progress_flag_cat_main >=5 && has_material} 我需要一件新的飞行套件。
    ~ takeItemStack("\{id:\"locusazzurro_icaruswings:purpur_ingot\",Count:1\}")
    ~ putVariable("mission_flag_cat_11", 0)
    -> wing_choosing
* \[向海森·卡山德问好\]
-> ending

==ending==
[与海森·卡山德的对话结束]
-> DONE