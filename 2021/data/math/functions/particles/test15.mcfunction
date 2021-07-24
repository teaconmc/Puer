execute positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^ ^ ^1
execute store result score tempx int run data get entity @e[tag=math_marker,limit=1] Pos[0] 500
execute store result score tempy int run data get entity @e[tag=math_marker,limit=1] Pos[1] 500
execute store result score tempz int run data get entity @e[tag=math_marker,limit=1] Pos[2] 500
scoreboard players operation tempx int *= r int
scoreboard players operation tempy int *= r int
scoreboard players operation tempz int *= r int
summon area_effect_cloud ~ ~ ~ {Tags:["mpar_particle","mpar_soul_fire_flame","tmp"],Duration:120}
execute as @e[tag=tmp] store result score @s mpar_omegap0 run data get entity @s Pos[0] 10000
execute as @e[tag=tmp] store result score @s mpar_omegap1 run data get entity @s Pos[1] 10000
execute as @e[tag=tmp] store result score @s mpar_omegap2 run data get entity @s Pos[2] 10000
scoreboard players set min int -80000
scoreboard players set max int 80000
function math:random
scoreboard players operation random int += @e[tag=tmp,limit=1] mpar_omegap0
execute store result entity @e[tag=tmp,limit=1] Pos[0] double 0.0001 run scoreboard players operation random int += tempx int
function math:random
scoreboard players operation random int += @e[tag=tmp,limit=1] mpar_omegap1
execute store result entity @e[tag=tmp,limit=1] Pos[1] double 0.0001 run scoreboard players operation random int += tempy int
function math:random
scoreboard players operation random int += @e[tag=tmp,limit=1] mpar_omegap2
execute store result entity @e[tag=tmp,limit=1] Pos[2] double 0.0001 run scoreboard players operation random int += tempz int
tag @e remove tmp

summon area_effect_cloud ~ ~ ~ {Tags:["mpar_particle","mpar_soul_fire_flame","tmp"],Duration:120}
execute as @e[tag=tmp] store result score @s mpar_omegap0 run data get entity @s Pos[0] 10000
execute as @e[tag=tmp] store result score @s mpar_omegap1 run data get entity @s Pos[1] 10000
execute as @e[tag=tmp] store result score @s mpar_omegap2 run data get entity @s Pos[2] 10000
scoreboard players set min int -80000
scoreboard players set max int 80000
function math:random
scoreboard players operation random int += @e[tag=tmp,limit=1] mpar_omegap0
execute store result entity @e[tag=tmp,limit=1] Pos[0] double 0.0001 run scoreboard players operation random int += tempx int
function math:random
scoreboard players operation random int += @e[tag=tmp,limit=1] mpar_omegap1
execute store result entity @e[tag=tmp,limit=1] Pos[1] double 0.0001 run scoreboard players operation random int += tempy int
function math:random
scoreboard players operation random int += @e[tag=tmp,limit=1] mpar_omegap2
execute store result entity @e[tag=tmp,limit=1] Pos[2] double 0.0001 run scoreboard players operation random int += tempz int
tag @e remove tmp

summon area_effect_cloud ~ ~ ~ {Tags:["mpar_particle","mpar_end_rod","tmp"],Duration:120}
execute as @e[tag=tmp] store result score @s mpar_omegap0 run data get entity @s Pos[0] 10000
execute as @e[tag=tmp] store result score @s mpar_omegap1 run data get entity @s Pos[1] 10000
execute as @e[tag=tmp] store result score @s mpar_omegap2 run data get entity @s Pos[2] 10000
scoreboard players set min int -80000
scoreboard players set max int 80000
function math:random
scoreboard players operation random int += @e[tag=tmp,limit=1] mpar_omegap0
execute store result entity @e[tag=tmp,limit=1] Pos[0] double 0.0001 run scoreboard players operation random int += tempx int
function math:random
scoreboard players operation random int += @e[tag=tmp,limit=1] mpar_omegap1
execute store result entity @e[tag=tmp,limit=1] Pos[1] double 0.0001 run scoreboard players operation random int += tempy int
function math:random
scoreboard players operation random int += @e[tag=tmp,limit=1] mpar_omegap2
execute store result entity @e[tag=tmp,limit=1] Pos[2] double 0.0001 run scoreboard players operation random int += tempz int
tag @e remove tmp