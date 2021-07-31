execute store result score stemp4 int run data get entity @s Pos[0] 100
execute store result score stemp5 int run data get entity @s Pos[1] 100
execute store result score stemp6 int run data get entity @s Pos[2] 100
scoreboard players operation stemp4 int -= stemp1 int
scoreboard players operation stemp5 int -= stemp2 int
scoreboard players operation stemp6 int -= stemp3 int
scoreboard players operation stemp4 int *= stemp4 int
scoreboard players operation stemp5 int *= stemp5 int
scoreboard players operation stemp6 int *= stemp6 int
scoreboard players operation stemp4 int += stemp5 int
scoreboard players operation stemp4 int += stemp6 int
execute if score stemp4 int <= stemp int run tag @s add result