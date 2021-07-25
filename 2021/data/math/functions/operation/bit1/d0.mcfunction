scoreboard players set nstemp1 int -4
execute store result score tstemp1 int run data get entity @s Item.tag.bit1[0]
scoreboard players operation tstemp1 int *= 10000 int