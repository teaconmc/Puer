summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp1"]}
data modify entity @e[tag=stmp1,limit=1] Pos set from entity @s Motion
execute as @e[tag=stmp1] positioned 0.0 0.0 0.0 run function math:3get-length
scoreboard players operation result int /= 10 int
scoreboard players operation @s mpar_l = result int
execute as @e[tag=stmp1] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~

data modify entity @s Rotation set from entity @e[tag=stmp1,limit=1] Rotation
execute store result score @s mpar_v run data get entity @s Age
kill @e[tag=stmp1]

tag @s remove lineve
tag @s add linese