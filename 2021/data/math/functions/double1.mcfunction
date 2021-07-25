summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"]}
tag @s add stmp1
execute as @e[tag=stmp] if score sign int matches 1 run function math:loop15
execute as @e[tag=stmp] if score sign int matches -1 run function math:loop16
kill @e[tag=stmp]
tag @s remove stmp1