execute store result score stemp int run data get entity @s Item.tag.c[0] 10000
execute store result score stemp1 int run data get entity @s Item.tag.input[0] 10000
execute store result entity @s Item.tag.c[0] double 0.0001 run scoreboard players operation stemp int += stemp1 int
execute store result score stemp int run data get entity @s Item.tag.c[1] 10000
execute store result score stemp1 int run data get entity @s Item.tag.input[1] 10000
execute store result entity @s Item.tag.c[1] double 0.0001 run scoreboard players operation stemp int += stemp1 int