# npc_cat_03
# 帝国海军准将
# 鲍恩·维普斯曼
# 舰长室

INCLUDE common_functions.ink

~ setAutoContinue(true)
~ setAutoContinueSpeed(40)

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
* 关于你们的帝国与帝皇？
-> background_1
* 你们是怎么来到这里的？
-> background_2

==background_1==
鲍恩·维普斯曼：根据传说，在一万年前，伟大的帝皇与祂的十八个子嗣和数以百万计的天使——星际战士，带领虔诚的帝国子民们踏足星海，驱散了可怖的旧夜。
鲍恩·维普斯曼：就在人类走向涅槃的前夜之时，帝皇的其中一个子嗣，帝国的战帅荷鲁斯发动了叛乱。战火再度席卷整个银河，而后再也没有停下。为了庇护数以兆亿帝国的子民们免受异形异端和混沌的涤毒，伟大的帝皇化为一轮金色的太阳，指引帝国的每一艘战舰抵达任何帝皇需要的地方。
* 愿你们早日回到自己的故土
    -> ending

==background_2==
鲍恩·维普斯曼：（展示舰队的战斗记录）在被亚空间的风暴带到此地前，我们曾响应多恩的战斗堡垒，帝国之拳的家园“山阵号”的召唤，脱离位于远东星域的战斗赶往帝国通向极东星域的大门——堡垒世界卡迪安。
鲍恩·维普斯曼：此刻的卡迪安正在遭受疯狂的叛徒黑色军团及其舰队的围攻，而恶魔及其异端仆从如浪潮般席卷了整个星球，即便这样，这颗堡垒星球的首府“卡迪亚”在我们的坚强抵抗下仍屹立不倒。
鲍恩·维普斯曼：在我们的舰队即将取得胜利，黑色军团的战帅阿巴顿逃之夭夭之时，混沌舰队用他们所带来的巨大异形造物猛烈的撞击卡迪安，我们数以亿计的战友，随着这颗帝国世界一起献上了他们最后的忠诚……愿他们安息……
鲍恩·维普斯曼：伴随这场摧毁整个星球的爆炸，亚空间的可怖帷幕突然展开，把我们的舰队完全笼罩，我们这艘巡洋舰虽然跳入了亚空间，但是不知被什么力量拖拽着，而船上接连报告混沌造物的入侵事件，等到我们失控跳出亚空间的时候，就来到了这里。
* 难以想象的可怕战斗，愿这些死去的将士能够得到安息。
    鲍恩·维普斯曼：也愿帝皇庇佑你，年轻的朝圣者。
    ->ending

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
