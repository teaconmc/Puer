scoreboard players operation -2ustemp int = result int
scoreboard players operation input int = -1ustemp int

execute store result score stemp1 int run data get entity @s Item.tag.tmp1.input[0] 10000
execute store result score stemp2 int run data get entity @s Item.tag.tmp1.input[1] 10000
scoreboard players operation input int *= stemp1 int
scoreboard players operation input int += stemp2 int
scoreboard players operation input int /= 10000 int

scoreboard players operation -3ustemp int = stemp int
function math:2lg
scoreboard players operation result int *= 100 int

execute store result score stemp1 int run data get entity @s Item.tag.tmp1.extra[0] 10000
execute store result score stemp2 int run data get entity @s Item.tag.tmp1.extra[1] 10000
scoreboard players operation stemp3 int = result int
scoreboard players operation result int /= 10000 int
scoreboard players operation stemp3 int %= 10000 int
scoreboard players operation stemp4 int = stemp1 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp4 int %= 10000 int
scoreboard players operation stemp4 int *= result int
scoreboard players operation result int *= stemp1 int
scoreboard players operation result int *= 10000 int
scoreboard players operation stemp1 int *= stemp3 int
scoreboard players operation result int += stemp1 int
scoreboard players operation result int += stemp4 int

scoreboard players operation -2ustemp int += result int
scoreboard players operation result int = -2ustemp int
scoreboard players operation stemp int = -3ustemp int