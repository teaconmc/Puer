execute store result score stemp3 int store result score stemp1 int run data get entity @s Item.tag.tmp1.c 10000
execute store result score stemp4 int store result score stemp2 int run data get entity @s Item.tag.tmp1.extra[0] 10000
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp3 int %= 10000 int
scoreboard players operation stemp2 int /= 10000 int
scoreboard players operation stemp4 int %= 10000 int

scoreboard players operation stemp4 int *= stemp1 int
scoreboard players operation stemp1 int *= stemp2 int
scoreboard players operation stemp2 int *= stemp3 int

scoreboard players operation stemp1 int *= 10000 int
scoreboard players operation stemp1 int += stemp4 int
scoreboard players operation stemp1 int += stemp2 int

execute store result score stemp2 int run data get entity @s Item.tag.tmp1.extra[1] 10000
scoreboard players operation stemp1 int += stemp2 int
scoreboard players operation result int += stemp1 int