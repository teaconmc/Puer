#store1
scoreboard players operation stempx1 int -= stempu0 int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation stempx1 int -= stempw0 int

scoreboard players operation stempy1 int -= stempu1 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation stempy1 int -= stempw1 int

scoreboard players operation stempz1 int -= stempu2 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation stempz1 int -= stempw2 int

execute at @s run particle end_rod