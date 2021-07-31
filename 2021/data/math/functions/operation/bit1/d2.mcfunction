scoreboard players set nstemp1 int 4
execute store result score tstemp1 int run data get entity @s Item.tag.bit1[2] 10000
execute store result score ttstemp int run data get entity @s Item.tag.bit1[1]
scoreboard players operation tstemp1 int += ttstemp1 int