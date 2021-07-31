execute store result entity @s Pos[0] double 0.0001 run scoreboard players get stempx1 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get stempy1 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get stempz1 int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp ^ ^ ^1.0
execute store result score stempa int run data get entity @s Pos[0] 10000
execute store result score stempb int run data get entity @s Pos[1] 10000
execute store result score stempc int run data get entity @s Pos[2] 10000