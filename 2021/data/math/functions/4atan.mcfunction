tp @e[tag=math_marker,limit=1] 0.0 0.0 0.0
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[2] double 0.0001 run scoreboard players get cos int
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[0] double 0.0001 run scoreboard players get sin int
execute as @e[tag=math_marker,limit=1] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
execute store result score result int run data get entity @e[tag=math_marker,limit=1] Rotation[0] -10000