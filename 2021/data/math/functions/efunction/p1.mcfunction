scoreboard players operation stemp3 int = -1ustemp int

execute store result score stemp1 int run data get entity @s Item.tag.tmp1.input[0] 10000
execute store result score stemp2 int run data get entity @s Item.tag.tmp1.input[1] 10000
scoreboard players operation stemp3 int *= stemp1 int
scoreboard players operation stemp3 int += stemp2 int
scoreboard players operation stemp3 int /= 10000 int

execute store result score stemp1 int run data get entity @s Item.tag.tmp1.extra[0] 10000
execute store result score stemp2 int run data get entity @s Item.tag.tmp1.extra[1] 10000
scoreboard players operation stemp3 int *= stemp1 int
scoreboard players operation stemp3 int += stemp2 int
scoreboard players operation result int += stemp3 int