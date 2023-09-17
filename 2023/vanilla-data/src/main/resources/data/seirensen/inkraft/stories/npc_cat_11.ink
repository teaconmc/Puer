# npc_cat_11
# 机舱下层紫珀锭箱子

INCLUDE common_functions.ink

~ setAutoContinue(true)
~ setAutoContinueSpeed(40)

VAR mission_flag_cat_11 = 0

~ mission_flag_cat_11 = getVariable("mission_flag_cat_11")

[打开了紫珀锭箱子]
-> check

==check==

{ mission_flag_cat_11 >= 1:
    -> item_taken
 - else:
    -> can_take_item
}

==item_taken==
你已经获取过这个物品了。
-> ending

==can_take_item==
* 拿一块\[紫珀锭\]
-> take_item
* \[关上箱子\]
-> ending

==take_item==
~ putVariable("mission_flag_cat_11", 1)
~ giveItemStack("\{id: \"locusazzurro_icaruswings:purpur_ingot\", Count: 1b, tag: \{display: \{Lore: \[\'\{\"text\":\"任务用品\",\"color\":\"blue\",\"italic\":false\}\'\]\}\}\}")
//~ giveItemStack("\{id:\"locusazzurro_icaruswings:purpur_ingot\",Count:1\}")
得到了一块[紫珀锭]
-> ending

==ending==
[关上了紫珀锭箱子]
-> DONE