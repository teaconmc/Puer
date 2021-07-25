scoreboard players operation stempx1 int -= stempu0 int
scoreboard players operation stempy1 int -= stempu1 int
scoreboard players operation stempz1 int -= stempu2 int

execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation stempx1 int -= stempv0 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation stempy1 int -= stempv1 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation stempz1 int -= stempv2 int