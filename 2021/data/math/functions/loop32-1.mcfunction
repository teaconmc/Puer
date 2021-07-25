execute store result entity @s Pos[0] double 0.0001 run scoreboard players get x int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get y int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get z int
execute positioned 0.0 0.0 0.0 run function math:3get-length
scoreboard players operation result int /= 100 int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~