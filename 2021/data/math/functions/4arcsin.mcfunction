summon area_effect_cloud 0.0 0.0 0.0 {Tags:["cank","arcsin","arcsin0"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["cank","arcsin","arcsin1"]}
execute as @e[tag=arcsin1] store result entity @s Pos[1] double 0.0001 run scoreboard players get input int
scoreboard players operation sqrt int = input int
scoreboard players operation sqrt int *= sqrt int
scoreboard players operation sqrt int -= 100000000 int
scoreboard players operation sqrt int *= -1 int
function math:sqrt0
execute as @e[tag=arcsin1] store result entity @s Pos[0] double 0.0001 run scoreboard players get sqrt int
execute as @e[tag=arcsin0] at @s facing entity @e[tag=arcsin1,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=arcsin0] store result score result int run data get entity @s Rotation[1] -10000
kill @e[tag=arcsin]