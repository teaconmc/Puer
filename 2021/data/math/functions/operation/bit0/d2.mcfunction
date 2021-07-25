scoreboard players set nstemp0 int 4
execute store result score tstemp0 int run data get entity @s Item.tag.bit0[2] 10000
execute store result score ttstemp0 int run data get entity @s Item.tag.bit0[1]
scoreboard players operation tstemp0 int += ttstemp0 int