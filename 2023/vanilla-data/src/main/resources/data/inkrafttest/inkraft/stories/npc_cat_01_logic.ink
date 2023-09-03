# npc_cat_01
# Arion 艾利恩
# 修道院上层羽翼制作体验NPC

VAR correct_answers = 0
VAR mission_flag_cat_01 = false



[DEBUG] 设置是否已完成答题
* 是
    mission_flag_cat_01 = true
* 否
    mission_flag_cat_01 = false

- -> normal_start

== normal_start ==

[1/2] 艾利恩：你好，冒险者，想必你已经了解了传统的羽翼制作方式了吧？
[2/2] 艾利恩：让我来考考你怎么样？
* 那就来吧！
-> quiz_start
* 我还没准备好。
-> quiz_not_prepared

== quiz_not_prepared==
[1/2] 艾利恩：哈哈，没关系，再到处转转了解一下吧。
[2/2] 艾利恩：准备好了之后可以随时来找我。
-> ending

== quiz_start==

=question_1
[1/3] 艾利恩：羽翼一般是用什么制作的？
* 羽毛，蜂蜜和木板。
* 羽毛扎，蜂蜡和木板。
    correct_answers++
* 羽毛扎，蜜脾和木板。
- -> question_2

=question_2
[2/3] 艾利恩：不同种类的羽翼用的材料一样吗？
* 结构大致相同，具体的材料略有不同。
    correct_answers++
* 完全不同。
- -> question_3

=question_3
[3/3] 艾利恩：目前有几种不同材质的，用羽毛制作的羽翼？
* 2种
* 3种
    corrent_answers++
* 4种
- -> quiz_check

=quiz_check
{ correct_answers >= 3:
	-> quiz_passed
- else:
	-> quiz_not_passed
}

== quiz_passed ==
[1/3] 艾利恩：看起来你已经对羽翼的制作相当了解了。
[2/3] 艾利恩：不过这都是理论，现在让我看看你的手艺吧。
[3/3] 艾利恩：制作一副普通羽毛制成的羽翼交给我，我会用一副更好的羽翼和你交换。
//~ putVariable("mission_flag_cat_01", true)
-> ending

== crafting_start ==

[1/1] 艾利恩：我们又见面了，冒险者，你的羽翼制作完成了吗？
* 做好了。
-> crafting_done
* 还没做好。
-> crafting_not_done

== crafting_not_done ==
[1/1] 艾利恩：这样啊，等你完成之后，请务必让我看看你的手艺。
-> ending

== crafting_done ==


-> ending

== quiz_not_passed ==
-> ending

== ending ==
-> DONE