summon area_effect_cloud 0.0 0.0 0.0 {Tags:["cank","arctan","arctan0"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["cank","arctan","arctan1"]}
execute store result entity @e[tag=arctan1,limit=1] Pos[0] double 1 run scoreboard players get 1 int
execute store result entity @e[tag=arctan1,limit=1] Pos[1] double 0.0001 run scoreboard players get tan int
execute as @e[tag=arctan0] at @s facing entity @e[tag=arctan1,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute store result score θ int run data get entity @e[tag=arctan0,limit=1] Rotation[1] -10000
kill @e[tag=arctan]