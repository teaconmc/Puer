execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["point","cube","stmp13","result"]}
execute at @s run tp ^ ^ ^0.1
scoreboard players remove @s int 1
execute if score @s int matches 1.. run function math:loop5