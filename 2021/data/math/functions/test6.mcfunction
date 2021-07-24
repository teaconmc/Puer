summon item ~ 180 ~ {Tags:["tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{length:50,line:[[],[]]}}}
summon area_effect_cloud ^2.0 ^ ^5.0 {Tags:["tmp1"]}
summon area_effect_cloud ^-2.0 ^ ^5.0 {Tags:["tmp2"]}
data modify entity @e[tag=tmp,limit=1] Item.tag.line[0] set from entity @e[tag=tmp1,limit=1] Pos
data modify entity @e[tag=tmp,limit=1] Item.tag.line[1] set from entity @e[tag=tmp2,limit=1] Pos
execute as @e[tag=tmp] run function math:line
execute at @e[tag=point] run particle end_rod
kill @e[tag=tmp]