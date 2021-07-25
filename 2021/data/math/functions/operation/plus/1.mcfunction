execute store result score stemp int run data get entity @s Item.tag.bit0[0]
execute store result score stemp1 int run data get entity @s Item.tag.bit1[0]
execute store result score stemp2 int run scoreboard players operation stemp int += stemp1 int
scoreboard players operation stemp int %= 10000 int
scoreboard players operation stemp2 int /= 10000 int
execute store result entity @s Item.tag.bit0[0] int 1 run scoreboard players get stemp int

execute store result score stemp int run data get entity @s Item.tag.bit0[1]
execute store result score stemp1 int run data get entity @s Item.tag.bit1[1]
scoreboard players operation stemp int += stemp1 int
execute store result score stemp2 int run scoreboard players operation stemp int += stemp2 int
scoreboard players operation stemp int %= 10000 int
scoreboard players operation stemp2 int /= 10000 int
execute store result entity @s Item.tag.bit0[1] int 1 run scoreboard players get stemp int

execute store result score stemp int run data get entity @s Item.tag.bit0[2]
execute store result score stemp1 int run data get entity @s Item.tag.bit1[2]
scoreboard players operation stemp int += stemp1 int
execute store result score stemp2 int run scoreboard players operation stemp int += stemp2 int
scoreboard players operation stemp int %= 10000 int
scoreboard players operation stemp2 int /= 10000 int
execute store result entity @s Item.tag.bit0[2] int 1 run scoreboard players get stemp int

execute store result score stemp int run data get entity @s Item.tag.bit0[3]
execute store result score stemp1 int run data get entity @s Item.tag.bit1[3]
scoreboard players operation stemp int += stemp1 int
execute store result score stemp2 int run scoreboard players operation stemp int += stemp2 int
scoreboard players operation stemp int %= 10000 int
scoreboard players operation stemp2 int /= 10000 int
execute store result entity @s Item.tag.bit0[3] int 1 run scoreboard players get stemp int

execute store result score stemp int run data get entity @s Item.tag.bit0[4]
execute store result score stemp1 int run data get entity @s Item.tag.bit1[4]
scoreboard players operation stemp int += stemp1 int
scoreboard players operation stemp int += stemp2 int
scoreboard players operation stemp int %= 10000 int
execute store result entity @s Item.tag.bit0[4] int 1 run scoreboard players get stemp int