execute store result score @s x run data get entity @s Item.tag.o[0] 10000
execute store result score @s y run data get entity @s Item.tag.o[1] 10000
execute store result score @s z run data get entity @s Item.tag.o[2] 10000
execute store result score stemp1 int run data get entity @s Item.tag.u[0] 100
execute store result score stemp2 int run data get entity @s Item.tag.u[1] 100
execute store result score stemp3 int run data get entity @s Item.tag.u[2] 100
scoreboard players operation stemp1 int *= @s u
scoreboard players operation stemp2 int *= @s u
scoreboard players operation stemp3 int *= @s u
scoreboard players operation @s x += stemp1 int
scoreboard players operation @s y += stemp2 int
scoreboard players operation @s z += stemp3 int
execute store result score stemp1 int run data get entity @s Item.tag.w[0] 100
execute store result score stemp2 int run data get entity @s Item.tag.w[1] 100
execute store result score stemp3 int run data get entity @s Item.tag.w[2] 100
scoreboard players operation stemp1 int *= @s w
scoreboard players operation stemp2 int *= @s w
scoreboard players operation stemp3 int *= @s w
scoreboard players operation @s x += stemp1 int
scoreboard players operation @s y += stemp2 int
scoreboard players operation @s z += stemp3 int