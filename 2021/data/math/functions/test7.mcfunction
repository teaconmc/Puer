summon item ~ 180 ~ {Tags:["tmp","input","tmp3"],Item:{id:"minecraft:glass",Count:1b,tag:{line:[[],[]]}}}
execute positioned ~ ~1.0 ~ run summon area_effect_cloud ^5 ^ ^5 {Tags:["tmp1"]}
execute positioned ~ ~1.0 ~ run summon area_effect_cloud ^-5 ^ ^5 {Tags:["tmp2"]}
data modify entity @e[tag=tmp,limit=1] Item.tag.line[0] set from entity @e[tag=tmp1,limit=1] Pos
data modify entity @e[tag=tmp,limit=1] Item.tag.line[1] set from entity @e[tag=tmp2,limit=1] Pos
execute as @e[tag=tmp] run function math:line
tag @e remove tmp
kill @e[tag=tmp1]
kill @e[tag=tmp2]

summon item ~ 180 ~ {Tags:["tmp","input1","tmp3"],Item:{id:"minecraft:glass",Count:1b,tag:{line:[[],[]]}}}
execute positioned ~ ~1.0 ~ run summon area_effect_cloud ^ ^5 ^5 {Tags:["tmp1"]}
execute positioned ~ ~1.0 ~ run summon area_effect_cloud ^ ^-5 ^5 {Tags:["tmp2"]}
data modify entity @e[tag=tmp,limit=1] Item.tag.line[0] set from entity @e[tag=tmp1,limit=1] Pos
data modify entity @e[tag=tmp,limit=1] Item.tag.line[1] set from entity @e[tag=tmp2,limit=1] Pos
execute as @e[tag=tmp] run function math:line
tag @e remove tmp
kill @e[tag=tmp1]
kill @e[tag=tmp2]
function math:cross
execute at @e[tag=point] run particle end_rod
execute at @e[tag=cross] run particle flame

kill @e[tag=tmp3]