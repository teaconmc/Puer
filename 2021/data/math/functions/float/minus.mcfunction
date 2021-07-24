execute store result score stemp int run data get entity @s Item.tag.float 10000
execute store result score stemp1 int run data get entity @s Item.tag.input 10000
execute store result entity @s Item.tag.float float 0.0001 run scoreboard players operation stemp int -= stemp1 int