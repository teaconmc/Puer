scoreboard players remove @s scb 1
summon area_effect_cloud ^ ^ ^1.0 {Tags:["result","stmp"]}
execute store result score stempx int run data get entity @e[tag=stmp,limit=1] Pos[0] 1000
execute store result score stempy int run data get entity @e[tag=stmp,limit=1] Pos[1] 1000
execute store result score stempz int run data get entity @e[tag=stmp,limit=1] Pos[2] 1000
scoreboard players operation stempx int *= r int
scoreboard players operation stempy int *= r int
scoreboard players operation stempz int *= r int
execute as @e[tag=stmp] run function math:loop70
execute if score @s scb matches 1.. rotated ~0.5 ~ run function math:loop71-1