execute store result score stemp1 int run data get entity @s Item.tag.line[0][0] 10000
execute store result score stemp3 int run data get entity @s Item.tag.line[0][2] 10000

execute store result score vectorx int run data get entity @s Item.tag.line[1][0] 10000
execute store result score vectorz int run data get entity @s Item.tag.line[1][2] 10000

scoreboard players operation vectorx int -= stemp1 int
scoreboard players operation vectorz int -= stemp3 int