summon area_effect_cloud ~ ~ ~ {Tags:["stmp"]}

execute store result score v mpar_temp run scoreboard players operation u mpar_temp = @s mpar_tick
scoreboard players operation v mpar_temp *= v mpar_temp
scoreboard players operation v mpar_temp *= @s mpar_a
scoreboard players operation u mpar_temp *= 1000 mpar_const

execute as @e[tag=stmp] run function math:loop21

data modify entity @e[tag=stmp,limit=1] Tags set from entity @s Tags

scoreboard players operation @s mpar_tick += long mpar_temp
execute if score @s mpar_tick <= @s mpar_l run function math:loop20