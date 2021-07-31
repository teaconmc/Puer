summon area_effect_cloud 1.0 0.0 0.0 {Tags:["cank","arctan","arctan1"]}
execute store result entity @e[tag=arctan1,limit=1] Pos[1] double 0.0001 run scoreboard players get input int
execute as @e[tag=arctan1] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
execute store result score result int run data get entity @e[tag=arctan1,limit=1] Rotation[1] -10000
kill @e[tag=arctan]