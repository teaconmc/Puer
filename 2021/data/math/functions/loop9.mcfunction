execute store result score stemp1 int run data get entity @s Pos[0] 1000
execute store result score stemp2 int run data get entity @s Pos[1] 1000
execute store result score stemp3 int run data get entity @s Pos[2] 1000
scoreboard players operation stemp1 int *= r int
scoreboard players operation stemp2 int *= r int
scoreboard players operation stemp3 int *= r int
scoreboard players operation stemp1 int += stempx int
scoreboard players operation stemp2 int += stempy int
scoreboard players operation stemp3 int += stempz int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players get stemp1 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get stemp2 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get stemp3 int