execute store result score @s x run data get entity @s Pos[0] 1000
execute store result score @s y run data get entity @s Pos[1] 1000
execute store result score @s z run data get entity @s Pos[2] 1000
scoreboard players operation @s x *= r int
scoreboard players operation @s y *= r int
scoreboard players operation @s z *= r int
scoreboard players operation @s x += x int
scoreboard players operation @s y += y int
scoreboard players operation @s z += z int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get @s x
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get @s y
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get @s z
execute store result entity @s Duration short 1 run scoreboard players get duration int
tag @s add point
tag @s add result