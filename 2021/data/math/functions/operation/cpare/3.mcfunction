execute store result score stemp int run data get entity @s Item.tag.bit0[3]
execute store result score stemp1 int run data get entity @s Item.tag.bit1[3]
execute if score stemp int < stemp1 int run scoreboard players set result int -1
execute if score stemp int = stemp1 int run function math:operation/cpare/2