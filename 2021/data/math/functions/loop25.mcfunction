scoreboard players add temp mpar_tick 1
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["stmp"]}
data modify entity @e[tag=stmp,limit=1] Tags set from entity @s Tags
scoreboard players add @s mpar_tick 1
execute if score @s mpar_tick > @s mpar_l run kill @s
execute at @s run tp ^ ^ ^0.1
execute if score temp mpar_tick < @s mpar_v if score @s mpar_tick <= @s mpar_l run function math:loop25