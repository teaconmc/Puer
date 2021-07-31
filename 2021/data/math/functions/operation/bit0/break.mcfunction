data modify entity @s Item.tag merge value {bit0:[0,0,0,0,0,1]}
scoreboard players operation stemp2 int = input int
execute if score input int < 0 int run data modify entity @s Item.tag.bit0[5] set value -1
execute if score input int < 0 int run scoreboard players operation stemp2 int *= -1 int
scoreboard players operation stemp0 int = stemp2 int
execute store result entity @s Item.tag.bit0[0] int 1 run scoreboard players operation stemp0 int %= 10000 int
execute store result score stemp1 int run scoreboard players operation stemp2 int /= 10000 int
execute store result entity @s Item.tag.bit0[1] int 1 run scoreboard players operation stemp1 int %= 10000 int
execute store result entity @s Item.tag.bit0[2] int 1 run scoreboard players operation stemp2 int /= 10000 int