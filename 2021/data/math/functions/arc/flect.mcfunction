tag @e remove result
summon area_effect_cloud ~ ~ ~ {Tags:["stmp8"]}
tp @e[tag=stmp8] ~ ~ ~ ~ ~
execute store result score θ int run data get entity @e[tag=stmp8,limit=1] Rotation[0] -10000
scoreboard players operation θ int -= 900000 int
function math:trif/sincos1
scoreboard players operation sinA int = sin int
scoreboard players operation cosA int = cos int
function math:trif/sincos
scoreboard players operation sinA1 int = sin int
scoreboard players operation cosA1 int = cos int
execute store result score θ int run data get entity @e[tag=stmp8,limit=1] Rotation[1] -10000
scoreboard players operation θ int += 900000 int
function math:trif/sincos1
scoreboard players operation sinB int = sin int
scoreboard players operation cosB int = cos int
function math:trif/sincos
scoreboard players operation sinB1 int = sin int
scoreboard players operation cosB1 int = cos int
execute as @e[tag=input] store result score @s x run data get entity @s Pos[0] 100
execute as @e[tag=input] store result score @s z run data get entity @s Pos[2] 100
execute store result score x int run data get entity @e[tag=stmp8,limit=1] Pos[0] 1000000
execute store result score y int run data get entity @e[tag=stmp8,limit=1] Pos[1] 1000000
execute store result score z int run data get entity @e[tag=stmp8,limit=1] Pos[2] 1000000
kill @e[tag=stmp8]
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1 {Tags:["flectt"]}
execute store result score temp int run data get entity @e[tag=flectt,limit=1] Pos[0] 100000
scoreboard players operation temp int *= d int
scoreboard players operation x int += temp int
execute store result score temp int run data get entity @e[tag=flectt,limit=1] Pos[1] 100000
scoreboard players operation temp int *= d int
scoreboard players operation y int += temp int
execute store result score temp int run data get entity @e[tag=flectt,limit=1] Pos[2] 100000
scoreboard players operation temp int *= d int
scoreboard players operation z int += temp int
kill @e[tag=flectt]
execute as @e[tag=input] run function math:arc/flect1