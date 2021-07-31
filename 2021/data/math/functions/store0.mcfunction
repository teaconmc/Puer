#store0
scoreboard players operation stempx0 int += stempu0 int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation stempx0 int += stempw0 int

scoreboard players operation stempy0 int += stempu1 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation stempy0 int += stempw1 int

scoreboard players operation stempz0 int += stempu2 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation stempz0 int += stempw2 int

execute at @s run particle end_rod