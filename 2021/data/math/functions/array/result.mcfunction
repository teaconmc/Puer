execute store result score result int run data get entity @s Item.tag.num[0] 10000
execute store result score result1 int run data get entity @s Item.tag.num[1] 1000
execute store result score result2 int run data get entity @s Item.tag.num[2] 100
execute store result score result3 int run data get entity @s Item.tag.num[3] 10
execute store result score result4 int run data get entity @s Item.tag.num[4] 1
scoreboard players operation result int += result1 int
scoreboard players operation result int += result2 int
scoreboard players operation result int += result3 int
scoreboard players operation result int += result4 int