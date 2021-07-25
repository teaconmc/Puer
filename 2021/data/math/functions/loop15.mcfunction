execute store result entity @s Pos[0] double 0.00000001 run scoreboard players get dec int
execute store result score stemp1 int run scoreboard players operation stemp int = int int
execute store result score bit0 int run scoreboard players operation stemp1 int %= 10 int
execute store result score stemp1 int run scoreboard players operation stemp int /= 10 int
execute store result score bit1 int run scoreboard players operation stemp1 int %= 10 int
execute store result score stemp1 int run scoreboard players operation stemp int /= 10 int
execute store result score bit2 int run scoreboard players operation stemp1 int %= 10 int
execute store result score stemp1 int run scoreboard players operation stemp int /= 10 int
execute store result score bit3 int run scoreboard players operation stemp1 int %= 10 int
execute store result score stemp1 int run scoreboard players operation stemp int /= 10 int
execute store result score bit4 int run scoreboard players operation stemp1 int %= 10 int
execute store result score stemp1 int run scoreboard players operation stemp int /= 10 int
execute store result score bit5 int run scoreboard players operation stemp1 int %= 10 int
execute store result score stemp1 int run scoreboard players operation stemp int /= 10 int
execute store result score bit6 int run scoreboard players operation stemp1 int %= 10 int
execute store result score stemp1 int run scoreboard players operation stemp int /= 10 int
execute store result score bit7 int run scoreboard players operation stemp1 int %= 10 int
execute store result score stemp1 int run scoreboard players operation stemp int /= 10 int

execute unless score bit0 int matches 0 run function math:loop15-0
execute unless score bit1 int matches 0 run function math:loop15-1
execute unless score bit2 int matches 0 run function math:loop15-2
execute unless score bit3 int matches 0 run function math:loop15-3
execute unless score bit4 int matches 0 run function math:loop15-4
execute unless score bit5 int matches 0 run function math:loop15-5
execute unless score bit6 int matches 0 run function math:loop15-6
execute unless score bit7 int matches 0 run function math:loop15-7

data modify entity @e[tag=stmp1,limit=1] Item.tag.result set from entity @s Pos[0]