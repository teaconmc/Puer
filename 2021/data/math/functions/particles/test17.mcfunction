execute store result entity @s Pos[0] double 0.0001 run scoreboard players get result0 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get result1 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get result2 int
execute at @s facing entity @e[tag=test,limit=1] feet positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score mpar_omegan0 int run data get entity @s Pos[0] -10000
execute store result score mpar_omegan1 int run data get entity @s Pos[1] -10000
execute store result score mpar_omegan2 int run data get entity @s Pos[2] -10000