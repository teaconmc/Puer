execute store result entity @s Pos[0] double 0.0001 run scoreboard players get stempd int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get stempe int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get stempf int
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp ^ ^ ^1.0
execute store result score stempd int run data get entity @s Pos[0] 10000
execute store result score stempe int run data get entity @s Pos[1] 10000
execute store result score stempf int run data get entity @s Pos[2] 10000