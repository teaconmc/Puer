summon area_effect_cloud 0.0 0.0 0.0 {Tags:["cank","arccot","arccot0"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["cank","arccot","arccot1"]}
execute store result entity @e[tag=arccot1,limit=1] Pos[1] double 1 run scoreboard players get 1 int
execute store result entity @e[tag=arccot1,limit=1] Pos[0] double 0.0001 run scoreboard players get cot int
execute as @e[tag=arccot0] at @s facing entity @e[tag=arccot1,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute store result score θ int run data get entity @e[tag=arccot0,limit=1] Rotation[1] -10000
kill @e[tag=arccot]