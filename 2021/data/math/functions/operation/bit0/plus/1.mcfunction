scoreboard players operation stemp int = input int
execute if score input int < 0 int run scoreboard players operation stemp int *= -1 int
scoreboard players operation stemp1 int = stemp int
scoreboard players operation stemp1 int %= 10000 int
execute store result score stemp2 int run data get entity @s Item.tag.bit0[0]
execute store result score stemp1 int run scoreboard players operation stemp2 int += stemp1 int
execute store result entity @s Item.tag.bit0[0] int 1 run scoreboard players operation stemp2 int %= 10000 int
scoreboard players operation stemp1 int /= 10000 int
execute store result score stemp2 int run data get entity @s Item.tag.bit0[1]
scoreboard players operation stemp2 int += stemp1 int
scoreboard players operation stemp int /= 10000 int
execute store result score stemp1 int run scoreboard players operation stemp2 int += stemp int
execute store result entity @s Item.tag.bit0[1] int 1 run scoreboard players operation stemp2 int %= 10000 int
scoreboard players operation stemp1 int /= 10000 int
execute store result score stemp2 int run data get entity @s Item.tag.bit0[2]
execute store result score stemp1 int run scoreboard players operation stemp2 int += stemp1 int
execute store result entity @s Item.tag.bit0[2] int 1 run scoreboard players operation stemp2 int %= 10000 int
scoreboard players operation stemp1 int /= 10000 int
execute store result score stemp2 int run data get entity @s Item.tag.bit0[3]
execute store result score stemp1 int run scoreboard players operation stemp2 int += stemp1 int
execute store result entity @s Item.tag.bit0[3] int 1 run scoreboard players operation stemp2 int %= 10000 int
scoreboard players operation stemp1 int /= 10000 int
execute store result score stemp2 int run data get entity @s Item.tag.bit0[4]
execute store result score stemp1 int run scoreboard players operation stemp2 int += stemp1 int
execute store result entity @s Item.tag.bit0[4] int 1 run scoreboard players operation stemp2 int %= 10000 int
scoreboard players operation stemp1 int /= 10000 int