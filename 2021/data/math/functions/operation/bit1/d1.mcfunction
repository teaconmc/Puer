scoreboard players set nstemp1 int 0
execute store result score tstemp1 int run data get entity @s Item.tag.bit1[1] 10000
execute store result score ttstemp1 int run data get entity @s Item.tag.bit1[0]
scoreboard players operation tstemp1 int += ttstemp1 int