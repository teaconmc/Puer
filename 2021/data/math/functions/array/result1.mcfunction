execute store result score result int run data get entity @s Item.tag.num[0] 100000000
execute store result score result1 int run data get entity @s Item.tag.num[1] 10000000
execute store result score result2 int run data get entity @s Item.tag.num[2] 1000000
execute store result score result3 int run data get entity @s Item.tag.num[3] 100000
execute store result score result4 int run data get entity @s Item.tag.num[4] 10000
execute store result score result5 int run data get entity @s Item.tag.num[5] 1000
execute store result score result6 int run data get entity @s Item.tag.num[6] 100
execute store result score result7 int run data get entity @s Item.tag.num[7] 10
execute store result score result8 int run data get entity @s Item.tag.num[8] 1
scoreboard players operation result int += result1 int
scoreboard players operation result int += result2 int
scoreboard players operation result int += result3 int
scoreboard players operation result int += result4 int
scoreboard players operation result int += result5 int
scoreboard players operation result int += result6 int
scoreboard players operation result int += result7 int
scoreboard players operation result int += result8 int