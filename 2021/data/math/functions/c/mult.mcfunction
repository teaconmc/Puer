execute store result score stempa int run data get entity @s Item.tag.c[0] 10000
execute store result score stempb int run data get entity @s Item.tag.c[1] 10000
execute store result score stempc int run data get entity @s Item.tag.input[0] 10000
execute store result score stempd int run data get entity @s Item.tag.input[1] 10000

execute store result score stemp1 int run scoreboard players operation stemp int = stempa int
scoreboard players operation stemp int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
execute store result score stemp3 int run scoreboard players operation stemp2 int = stempc int
scoreboard players operation stemp2 int /= 10000 int
scoreboard players operation stemp3 int %= 10000 int
scoreboard players operation stemp3 int *= stemp int
scoreboard players operation stemp int *= stemp2 int
scoreboard players operation stemp2 int *= stemp1 int
scoreboard players operation stemp int *= 10000 int
scoreboard players operation stemp int += stemp2 int
execute store result score stemp4 int run scoreboard players operation stemp int += stemp3 int

execute store result score stemp1 int run scoreboard players operation stemp int = stempb int
scoreboard players operation stemp int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
execute store result score stemp3 int run scoreboard players operation stemp2 int = stempd int
scoreboard players operation stemp2 int /= 10000 int
scoreboard players operation stemp3 int %= 10000 int
scoreboard players operation stemp3 int *= stemp int
scoreboard players operation stemp int *= stemp2 int
scoreboard players operation stemp2 int *= stemp1 int
scoreboard players operation stemp int *= 10000 int
scoreboard players operation stemp int += stemp2 int
scoreboard players operation stemp int += stemp3 int

execute store result entity @s Item.tag.c[0] double 0.0001 run scoreboard players operation stemp4 int -= stemp int

execute store result score stemp1 int run scoreboard players operation stemp int = stempa int
scoreboard players operation stemp int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
execute store result score stemp3 int run scoreboard players operation stemp2 int = stempd int
scoreboard players operation stemp2 int /= 10000 int
scoreboard players operation stemp3 int %= 10000 int
scoreboard players operation stemp3 int *= stemp int
scoreboard players operation stemp int *= stemp2 int
scoreboard players operation stemp2 int *= stemp1 int
scoreboard players operation stemp int *= 10000 int
scoreboard players operation stemp int += stemp2 int
execute store result score stemp4 int run scoreboard players operation stemp int += stemp3 int

execute store result score stemp1 int run scoreboard players operation stemp int = stempb int
scoreboard players operation stemp int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
execute store result score stemp3 int run scoreboard players operation stemp2 int = stempc int
scoreboard players operation stemp2 int /= 10000 int
scoreboard players operation stemp3 int %= 10000 int
scoreboard players operation stemp3 int *= stemp int
scoreboard players operation stemp int *= stemp2 int
scoreboard players operation stemp2 int *= stemp1 int
scoreboard players operation stemp int *= 10000 int
scoreboard players operation stemp int += stemp2 int
scoreboard players operation stemp int += stemp3 int

execute store result entity @s Item.tag.c[1] double 0.0001 run scoreboard players operation stemp4 int += stemp int