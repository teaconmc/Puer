summon area_effect_cloud ~ ~ ~ {Tags:["stmp"]}
summon item ~ 180.0 ~ {Tags:["stmp1","result"],Item:{id:"minecraft:glass",Count:1b,tag:{line:[[],[]]}},NoGravity:true}
data modify entity @e[tag=stmp1,limit=1] Item.tag.line[0] set from entity @s Pos
data modify entity @e[tag=stmp1,limit=1] Item.tag.line[1] set from entity @e[tag=stmp,limit=1] Pos
tag @e remove stmp1
kill @e[tag=stmp]