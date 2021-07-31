scoreboard players set nstemp1 int 12
execute store result score tstemp1 int run data get entity @s Item.tag.bit1[4] 10000
execute store result score ttstemp1 int run data get entity @s Item.tag.bit1[3]
scoreboard players operation tstemp int += ttstemp1 int