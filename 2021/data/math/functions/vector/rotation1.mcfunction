#rotation
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["vtmp1","vtmp"]}
execute store result entity @e[tag=vtmp1,limit=1] Pos[0] double 0.01 run scoreboard players get vectorx int
execute store result entity @e[tag=vtmp1,limit=1] Pos[1] double 0.01 run scoreboard players get vectory int
execute store result entity @e[tag=vtmp1,limit=1] Pos[2] double 0.01 run scoreboard players get vectorz int
execute as @e[tag=vtmp1] at @s positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
execute store result score vrx int run data get entity @e[tag=vtmp1,limit=1] Rotation[0] -10000
execute store result score vry int run data get entity @e[tag=vtmp1,limit=1] Rotation[1] -10000
kill @e[tag=vtmp]