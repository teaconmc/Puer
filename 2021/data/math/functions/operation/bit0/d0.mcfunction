scoreboard players set nstemp0 int -4
execute store result score tstemp0 int run data get entity @s Item.tag.bit0[0]
scoreboard players operation tstemp0 int *= 10000 int