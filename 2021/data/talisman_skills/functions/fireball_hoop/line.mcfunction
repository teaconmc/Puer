summon area_effect_cloud ~ ~ ~ {Tags:["mhoop_line1","tmp1","mpar_red_dust","mpar_custom","lineve","instant"],Age:20,Duration:100}
execute store result score tempx int run data get entity @e[tag=tmp,limit=1] Pos[0] 10000
execute store result score tempy int run data get entity @e[tag=tmp,limit=1] Pos[1] 10000
execute store result score tempz int run data get entity @e[tag=tmp,limit=1] Pos[2] 10000
execute store result score temp0 int run data get entity @s Pos[0] 10000
execute store result score temp1 int run data get entity @s Pos[1] 10000
execute store result score temp2 int run data get entity @s Pos[2] 10000
execute as @e[tag=tmp1] store result entity @s Motion[0] double 0.00001 run scoreboard players operation tempx int -= temp0 int
execute as @e[tag=tmp1] store result entity @s Motion[1] double 0.00001 run scoreboard players operation tempy int -= temp1 int
execute as @e[tag=tmp1] store result entity @s Motion[2] double 0.00001 run scoreboard players operation tempz int -= temp2 int
tag @e remove tmp1