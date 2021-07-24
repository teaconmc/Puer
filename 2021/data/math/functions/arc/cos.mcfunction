summon area_effect_cloud 0.0 0.0 0.0 {Tags:["cank","arccos","arccos0"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["cank","arccos","arccos1"]}
execute as @e[tag=arccos1] store result entity @s Pos[2] double 0.01 run scoreboard players get cos int
scoreboard players operation sqrt int = cos int
scoreboard players operation sqrt int *= sqrt int
scoreboard players operation sqrt int -= 100000000 int
scoreboard players operation sqrt int *= -1 int
function math:sqrt1
execute as @e[tag=arccos1] store result entity @s Pos[0] double 0.0001 run scoreboard players get sqrt int
execute as @e[tag=arccos0] at @s facing entity @e[tag=arccos1,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=arccos0] store result score θ int run data get entity @s Rotation[0] -10000
kill @e[tag=arccos]