#function math:array/bit

data modify entity @s Item.tag merge value {num1:[0.0]}

execute store result score temp int store result score temp1 int run data get entity @s Item.tag.num[0]
scoreboard players operation temp int /= input int
scoreboard players operation temp1 int %= input int
scoreboard players operation temp1 int *= 10 int
execute store result entity @s Item.tag.num[0] int 1 run scoreboard players get temp int

execute store result score temp int run data get entity @s Item.tag.num[1]
execute store result score temp1 int run scoreboard players operation temp int += temp1 int
scoreboard players operation temp int /= input int
scoreboard players operation temp1 int %= input int
scoreboard players operation temp1 int *= 10 int
execute store result entity @s Item.tag.num[1] int 1 run scoreboard players get temp int

execute store result score temp int run data get entity @s Item.tag.num[2]
execute store result score temp1 int run scoreboard players operation temp int += temp1 int
scoreboard players operation temp int /= input int
scoreboard players operation temp1 int %= input int
scoreboard players operation temp1 int *= 10 int
execute store result entity @s Item.tag.num[2] int 1 run scoreboard players get temp int

execute store result score temp int run data get entity @s Item.tag.num[3]
execute store result score temp1 int run scoreboard players operation temp int += temp1 int
scoreboard players operation temp int /= input int
scoreboard players operation temp1 int %= input int
scoreboard players operation temp1 int *= 10 int
execute store result entity @s Item.tag.num[3] int 1 run scoreboard players get temp int

execute store result score temp int run data get entity @s Item.tag.num[4]
execute store result score temp1 int run scoreboard players operation temp int += temp1 int
scoreboard players operation temp int /= input int
scoreboard players operation temp1 int %= input int
scoreboard players operation temp1 int *= 10 int
execute store result entity @s Item.tag.num[4] int 1 run scoreboard players get temp int

execute store result score temp int run data get entity @s Item.tag.num[5]
execute store result score temp1 int run scoreboard players operation temp int += temp1 int
scoreboard players operation temp int /= input int
scoreboard players operation temp1 int %= input int
scoreboard players operation temp1 int *= 10 int
execute store result entity @s Item.tag.num[5] int 1 run scoreboard players get temp int

execute store result score temp int run data get entity @s Item.tag.num[6]
execute store result score temp1 int run scoreboard players operation temp int += temp1 int
scoreboard players operation temp int /= input int
scoreboard players operation temp1 int %= input int
scoreboard players operation temp1 int *= 10 int
execute store result entity @s Item.tag.num[6] int 1 run scoreboard players get temp int

execute store result score temp int run data get entity @s Item.tag.num[7]
execute store result score temp1 int run scoreboard players operation temp int += temp1 int
scoreboard players operation temp int /= input int
scoreboard players operation temp1 int %= input int
scoreboard players operation temp1 int *= 10 int
execute store result entity @s Item.tag.num[7] int 1 run scoreboard players get temp int

execute store result score temp int run data get entity @s Item.tag.num[8]
execute store result score temp1 int run scoreboard players operation temp int += temp1 int
scoreboard players operation temp int /= input int
scoreboard players operation temp1 int %= input int
scoreboard players operation temp1 int *= 10000 int
execute store result entity @s Item.tag.num[8] int 1 run scoreboard players get temp int

scoreboard players operation temp1 int /= input int
execute store result entity @s Item.tag.num1[0] double 0.0001 run scoreboard players get temp1 int

execute if score input int matches 0 run kill @s