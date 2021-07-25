execute if score input int < 0 int store result entity @s Item.tag.bit0[5] int -1 run data get entity @s Item.tag.bit0[5]
scoreboard players operation stemp int = input int
execute if score input int < 0 int run scoreboard players operation stemp int *= -1 int
scoreboard players operation stemp0 int = stemp int


execute store result score stemp1 int run scoreboard players operation stemp int /= 10000 int
execute store result score stemp2 int run scoreboard players operation stemp int /= 10000 int
scoreboard players operation stemp0 int %= 10000 int
scoreboard players operation stemp1 int %= 10000 int


execute store result score 1stemp2 int run data get entity @s Item.tag.bit0[0]
execute store result score stempbit int run scoreboard players operation 1stemp2 int *= stemp0 int
execute store result score 0stempbit int run scoreboard players operation 1stemp2 int %= 10000 int
scoreboard players operation stempbit int /= 10000 int


execute store result score 1stemp2 int run data get entity @s Item.tag.bit0[0]
scoreboard players operation 1stemp2 int *= stemp1 int
execute store result score 1stemp3 int run data get entity @s Item.tag.bit0[1]
scoreboard players operation 1stemp3 int *= stemp0 int
scoreboard players operation 1stemp2 int += 1stemp3 int
execute store result score stempbit int run scoreboard players operation 1stemp2 int += stempbit int
execute store result score 1stempbit int run scoreboard players operation 1stemp2 int %= 10000 int
scoreboard players operation stempbit int /= 10000 int


execute store result score 1stemp2 int run data get entity @s Item.tag.bit0[0]
scoreboard players operation 1stemp2 int *= stemp2 int
execute store result score 1stemp3 int run data get entity @s Item.tag.bit0[1]
scoreboard players operation 1stemp3 int *= stemp1 int
scoreboard players operation 1stemp2 int += 1stemp3 int
execute store result score 1stemp3 int run data get entity @s Item.tag.bit0[2]
scoreboard players operation 1stemp3 int *= stemp0 int
scoreboard players operation 1stemp2 int += 1stemp3 int
execute store result score stempbit int run scoreboard players operation 1stemp2 int += stempbit int
execute store result score 2stempbit int run scoreboard players operation 1stemp2 int %= 10000 int
scoreboard players operation stempbit int /= 10000 int


execute store result score 1stemp2 int run data get entity @s Item.tag.bit0[1]
scoreboard players operation 1stemp2 int *= stemp2 int
execute store result score 1stemp3 int run data get entity @s Item.tag.bit0[2]
scoreboard players operation 1stemp3 int *= stemp1 int
scoreboard players operation 1stemp2 int += 1stemp3 int
execute store result score 1stemp3 int run data get entity @s Item.tag.bit0[3]
scoreboard players operation 1stemp3 int *= stemp0 int
scoreboard players operation 1stemp2 int += 1stemp3 int
execute store result score stempbit int run scoreboard players operation 1stemp2 int += stempbit int
execute store result score 3stempbit int run scoreboard players operation 1stemp2 int %= 10000 int
scoreboard players operation stempbit int /= 10000 int


execute store result score 1stemp2 int run data get entity @s Item.tag.bit0[2]
scoreboard players operation 1stemp2 int *= stemp2 int
execute store result score 1stemp3 int run data get entity @s Item.tag.bit0[3]
scoreboard players operation 1stemp3 int *= stemp1 int
scoreboard players operation 1stemp2 int += 1stemp3 int
execute store result score 1stemp3 int run data get entity @s Item.tag.bit0[4]
scoreboard players operation 1stemp3 int *= stemp0 int
scoreboard players operation 1stemp2 int += 1stemp3 int
execute store result score 1stemp3 int run data get entity @s Item.tag.bit0[3]
scoreboard players operation 1stemp3 int *= stemp2 int
scoreboard players operation 1stemp3 int *= 10000 int
scoreboard players operation 1stemp2 int += 1stemp3 int
execute store result score 1stemp3 int run data get entity @s Item.tag.bit0[4]
scoreboard players operation 1stemp3 int *= stemp1 int
scoreboard players operation 1stemp3 int *= 10000 int
scoreboard players operation 1stemp2 int += 1stemp3 int
execute store result score 1stemp3 int run data get entity @s Item.tag.bit0[4]
scoreboard players operation 1stemp3 int *= stemp2 int
scoreboard players operation 1stemp3 int *= 100000000 int
scoreboard players operation 1stemp2 int += stempbit int
execute store result score 4stempbit int run scoreboard players operation 1stemp2 int += 1stemp3 int


execute store result entity @s Item.tag.bit0[0] int 1 run scoreboard players get 0stempbit int
execute store result entity @s Item.tag.bit0[1] int 1 run scoreboard players get 1stempbit int
execute store result entity @s Item.tag.bit0[2] int 1 run scoreboard players get 2stempbit int
execute store result entity @s Item.tag.bit0[3] int 1 run scoreboard players get 3stempbit int
execute store result entity @s Item.tag.bit0[4] int 1 run scoreboard players get 4stempbit int