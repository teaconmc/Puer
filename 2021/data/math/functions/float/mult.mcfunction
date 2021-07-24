execute store result score stemp0-0 int store result score stemp0-1 int run data get entity @s Item.tag.float 10000
execute store result score stemp1-0 int store result score stemp1-1 int run data get entity @s Item.tag.input 10000
scoreboard players operation stemp0-0 int /= 10000 int
scoreboard players operation stemp0-1 int %= 10000 int
scoreboard players operation stemp1-0 int /= 10000 int
scoreboard players operation stemp1-1 int %= 10000 int