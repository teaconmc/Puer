tag @e[nbt={Item:{tag:{vector:{}}}},limit=1,sort=nearest] add stmp
execute store result score result int run data get entity @s Item.tag.vector.pos[0] 100
execute store result score stemp1 int run data get entity @e[tag=stmp,limit=1] Item.tag.vector.pos[0] 100
scoreboard players operation result int *= stemp1 int
execute store result score stemp1 int run data get entity @s Item.tag.vector.pos[1] 100
execute store result score stemp2 int run data get entity @e[tag=stmp,limit=1] Item.tag.vector.pos[1] 100
scoreboard players operation stemp1 int *= stemp2 int
scoreboard players operation result int += stemp1 int
execute store result score stemp1 int run data get entity @s Item.tag.vector.pos[2] 100
execute store result score stemp2 int run data get entity @e[tag=stmp,limit=1] Item.tag.vector.pos[2] 100
scoreboard players operation stemp1 int *= stemp2 int
scoreboard players operation result int += stemp1 int
tag @e remove stmp