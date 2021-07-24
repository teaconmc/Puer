tag @e remove result
summon item ~ 180.0 ~ {Item:{id:"minecraft:glass",Count:1b,tag:{cube:[[],[]]}},Tags:["result","stmp"],NoGravity:true}
summon area_effect_cloud ~ ~ ~ {Tags:["stmp1"]}
data modify entity @e[tag=stmp,limit=1] Item.tag.cube[0] set from entity @s Pos
data modify entity @e[tag=stmp,limit=1] Item.tag.cube[1] set from entity @e[tag=stmp1,limit=1] Pos
kill @e[tag=stmp1]
tag @e remove stmp