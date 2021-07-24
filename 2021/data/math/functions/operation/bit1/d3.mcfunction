scoreboard players set nstemp1 int 8
execute store result score tstemp1 int run data get entity @s Item.tag.bit1[3] 10000
execute store result score ttstemp1 int run data get entity @s Item.tag.bit1[2]
scoreboard players operation tstemp1 int += ttstemp1 int