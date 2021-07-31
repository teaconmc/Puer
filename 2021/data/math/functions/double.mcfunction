scoreboard players set sign int 1
execute store result score int int run data get entity @s Item.tag.input
execute if score int int matches ..-1 run scoreboard players set sign int -1
execute if score int int matches ..-1 run scoreboard players operation int int *= -1 int

tag @s add stmp1

summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"]}

execute as @e[tag=stmp] if score sign int matches 1 run function math:loop13
execute as @e[tag=stmp] if score sign int matches -1 run function math:loop14

kill @e[tag=stmp]
tag @s remove stmp1