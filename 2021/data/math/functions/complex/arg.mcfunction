summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"]}
execute store result entity @e[tag=stmp,limit=1] Pos[2] double 0.0001 run scoreboard players get r int
execute store result entity @e[tag=stmp,limit=1] Pos[0] double 0.0001 run scoreboard players get i int
execute as @e[tag=stmp] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
execute store result score result int run data get entity @e[tag=stmp,limit=1] Rotation[0] -10000
execute if score i int matches ..-1 run scoreboard players operation result int += 3600000 int
kill @e[tag=stmp]