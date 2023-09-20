
# author: LocusAzzurro

//凡人级 20
//少量新矿物|新普通工具|能量系统|矿物增产|管道|耗能工具|换皮熔炉|魔力系统|简单魔法仪式|换皮工作台|换皮小麦|工作台可制作食物|简单作物增产|换皮动物|养殖动物装箱|换皮原版怪物|无机制结构|纯外观式新生物群系|常规新维度|新普通武器

//猛兽级 27
//大量新矿物|能量转换|生产线|简单物流|大型工作台|世界内合成|非采集原料|简单多方块结构|知识解锁|魔力管理|多条件仪式|新维度|恐怖敌对生物|复杂种植|特殊种植条件|烹饪工具|作物照料|季节|食物多样性|换皮鸡|高数值怪物|大型结构|特殊机制生物群系|特殊机制维度|RPG技能加点|血月|枪械

//异形级 26
//元素周期表|复杂物流|异形工作台|仪式合成|异形多方块结构|程序控制设备|杂交|核电|大规模要素转换|图块编程施法|持久性阵法|随机炼金配方|小游戏式材料获取|营养均衡机制|食物制作设备|配套作物种植机制|复杂烹饪|天气|复杂动物养殖|更多状态条|复杂AI怪物|复杂结构|多机制新维度|拟真武器|真实生存|原版AI增强

//古神级 25
//拟真工业|生物学|特殊属性材料|原版工具修改|铁路物流|熔岩桶限制|传送带|大型多方块结构|编程控制|自定义数据包驱动|语音施法|方块摆放编程施法|扭曲|生电联动|食物储存|要素植物|科技农业结合|小游戏食物制作|敌对中立生物饲养|带场地首领|真实物理引擎|非原版生存机制|复杂载具|复杂战斗机制|解谜要素

INCLUDE common_functions.ink

~ setAutoContinue(true)
~ setAutoContinueSpeed(20)
VAR point = 0

-> START

== START ==

~ point = 0
这是一个Minecraft模组元素接受度测试，仅供娱乐。
§7（本测试基于StarInitial的XP系统测试改编，感谢NoName德里奇的要素收集协助）§r
+ 开始测试 -> START_TEST

->DONE

== START_TEST ==

请选择以下内容您能承受的等级，内容分为3个分类级别：凡人级、猛兽级、异形级、古神级。
-> LV1

== LV1 ==

VAR lv_1_tot = 20
VAR lv_1_cur = 1

§l【凡人级】§r
-> question

= question
[{lv_1_cur}/{lv_1_tot}]请问您可以接受§l"{!少量新矿物|新普通工具|能量系统|矿物增产|管道|耗能工具|换皮熔炉|魔力系统|简单魔法仪式|换皮工作台|换皮小麦|工作台可制作食物|简单作物增产|换皮动物|养殖动物装箱|换皮原版怪物|无机制结构|纯外观式新生物群系|常规新维度|新普通武器}"§r吗？
+ 喜欢
    ~ point += 1 
+ 接受
    ~ point += 1 
+ 不接受
+ 无所谓
* 中断测试
-> INTERRUPT

- -> point_check

= point_check

~ lv_1_cur ++

{ lv_1_cur > lv_1_tot:
    您目前得分§l{point}§r分。
    -> LV2
 - else:
    -> question
}

== LV2 ==

VAR lv_2_tot = 27
VAR lv_2_cur = 1

§l【猛兽级】§r
-> question

= question
[{lv_2_cur}/{lv_2_tot}]请问您可以接受§l"{!大量新矿物|能量转换|生产线|简单物流|大型工作台|世界内合成|非采集原料|简单多方块结构|知识解锁|魔力管理|多条件仪式|新维度|恐怖敌对生物|复杂种植|特殊种植条件|烹饪工具|作物照料|季节|食物多样性|换皮鸡|高数值怪物|大型结构|特殊机制生物群系|特殊机制维度|RPG技能加点|血月|枪械}"§r吗？
+ 喜欢
    ~ point += 2 
+ 接受
    ~ point += 1 
+ 不接受
+ 无所谓
    ~ point += 1 
* 中断测试
-> INTERRUPT

- -> point_check

= point_check

~ lv_2_cur ++

{ lv_2_cur > lv_2_tot:
    您目前得分§l{point}§r分。
    -> LV3
 - else:
    -> question
}

== LV3 ==

VAR lv_3_tot = 26
VAR lv_3_cur = 1

§l【异形级】§r
-> question

= question
[{lv_3_cur}/{lv_3_tot}]请问您可以接受§l"{!元素周期表|复杂物流|异形工作台|仪式合成|异形多方块结构|程序控制设备|杂交|核电|大规模要素转换|图块编程施法|持久性阵法|随机炼金配方|小游戏式材料获取|营养均衡机制|食物制作设备|配套作物种植机制|复杂烹饪|天气|复杂动物养殖|更多状态条|复杂AI怪物|复杂结构|多机制新维度|拟真武器|真实生存|原版AI增强}"§r吗？
+ 喜欢
    ~ point += 3
+ 接受
    ~ point += 2 
+ 不接受
+ 无所谓
    ~ point += 1 
* 中断测试
-> INTERRUPT

- -> point_check

= point_check

~ lv_3_cur ++

{ lv_3_cur > lv_3_tot:
    您目前得分§l{point}§r分。
    -> LV4
 - else:
    -> question
}

== LV4 ==

VAR lv_4_tot = 25
VAR lv_4_cur = 1

§l【古神级】§r
-> question

= question
[{lv_4_cur}/{lv_4_tot}]请问您可以接受§l"{!拟真工业|生物学|特殊属性材料|原版工具修改|铁路物流|熔岩桶限制|传送带|大型多方块结构|编程控制|自定义数据包驱动|语音施法|方块摆放编程施法|扭曲|生电联动|食物储存|要素植物|科技农业结合|小游戏食物制作|敌对中立生物饲养|带场地首领|真实物理引擎|非原版生存机制|复杂载具|复杂战斗机制|解谜要素}"§r吗？
+ 喜欢
    ~ point += 4
+ 接受
    ~ point += 3 
+ 不接受
+ 无所谓
    ~ point += 1 
* 中断测试
-> INTERRUPT

- -> point_check

= point_check

~ lv_4_cur ++

{ lv_4_cur > lv_4_tot:
    您目前得分§l{point}§r分。
    -> RESULT
 - else:
    -> question
}


== INTERRUPT ==
\[测试已中断\]
-> DONE

== RESULT ==
§l总分：§9{point}分§r
{   point <= 15:
    §l绵羊级§r
    你对于模组内容的选择仅停留在原始到不能更原始的标准，甚至到了精神洁癖的地步，真的是让人叹为观止。
    ->DONE
}
{   point <= 40:
    §l凡人级§r
    你对于模组内容的接受程度，处于一种正常且健康的状态，模组始于原版，但为原版增色，你通过模组寻找着原版不存在但与其不相违背的内容。
    ->DONE
}
{   point <= 120:
    §l勇者级§r
    原版限制了太多想象与可能性，而你通过模组释放你的幻想，模组加入的内容帮你补齐原版无法满足的东西。
    ->DONE
}
{   point <= 160:
    §l巨龙级§r
    正常的模组已经无法满足你，你开始追求那些特殊的东西，反正都玩模组了，不也挺好的吗。
    ->DONE
}
{   point <= 200:
    §l异形级§r
    当你凝视深渊的时候，深渊也在凝视着你。
    ->DONE
}
{   point <= 240:
    §l恶魔级§r
    当你凝视深渊的时候，深渊也看向了你，你们对视了一眼，你掏出了金光闪闪的模组物品，以至于让深渊尴尬地移开了视线。
    ->DONE
} 
    §l古神级§r
    当你凝视深渊的时候，深渊落荒而逃，而你抓住深渊，把加速火把插进了它的菊花。
->DONE