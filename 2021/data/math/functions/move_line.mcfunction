execute store result score stemp int run data get entity @s Item.tag.line[0][0] 10000
scoreboard players operation stemp int += movex int
execute store result entity @s Item.tag.line[0][0] double 0.0001 run scoreboard players get stemp int

execute store result score stemp int run data get entity @s Item.tag.line[0][1] 10000
scoreboard players operation stemp int += movey int
execute store result entity @s Item.tag.line[0][1] double 0.0001 run scoreboard players get stemp int

execute store result score stemp int run data get entity @s Item.tag.line[0][2] 10000
scoreboard players operation stemp int += movez int
execute store result entity @s Item.tag.line[0][2] double 0.0001 run scoreboard players get stemp int

execute store result score stemp int run data get entity @s Item.tag.line[1][0] 10000
scoreboard players operation stemp int += movex int
execute store result entity @s Item.tag.line[1][0] double 0.0001 run scoreboard players get stemp int

execute store result score stemp int run data get entity @s Item.tag.line[1][1] 10000
scoreboard players operation stemp int += movey int
execute store result entity @s Item.tag.line[1][1] double 0.0001 run scoreboard players get stemp int

execute store result score stemp int run data get entity @s Item.tag.line[1][2] 10000
scoreboard players operation stemp int += movez int
execute store result entity @s Item.tag.line[1][2] double 0.0001 run scoreboard players get stemp int