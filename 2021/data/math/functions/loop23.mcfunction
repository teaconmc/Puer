scoreboard players add @s mpar_tick 1
summon area_effect_cloud ^ ^ ^1.0 {Tags:["stmp"]}
execute as @e[tag=stmp] run function math:loop24
data modify entity @e[tag=stmp,limit=1] Tags set from entity @s Tags
execute if score @s mpar_tick <= @s mpar_alpha rotated ~1.0 ~ run function math:loop23