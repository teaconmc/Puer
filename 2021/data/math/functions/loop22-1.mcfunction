summon area_effect_cloud ~ ~ ~ {Tags:["stmp"]}
data modify entity @e[tag=stmp,limit=1] Tags set from entity @s Tags
scoreboard players add @s mpar_tick 1
execute if score @s mpar_tick <= @s mpar_l positioned ^ ^ ^0.1 run function math:loop22