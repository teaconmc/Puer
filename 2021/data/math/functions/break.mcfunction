scoreboard players set sign int 1
scoreboard players operation stemp int = input int
execute if score stemp int matches ..-1 run scoreboard players set sign int -1
execute if score stemp int matches ..-1 run scoreboard players operation stemp int *= -1 int
scoreboard players operation stemp1 int = stemp int

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