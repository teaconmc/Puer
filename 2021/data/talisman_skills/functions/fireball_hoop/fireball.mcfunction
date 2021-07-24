tag @e[tag=mhoop_har,limit=1,sort=random,distance=..10] add tmp1
execute store result score tempx int run data get entity @e[tag=tmp1,limit=1] Pos[0] 10000
execute store result score tempy int run data get entity @e[tag=tmp1,limit=1] Pos[1] 10000
execute store result score tempz int run data get entity @e[tag=tmp1,limit=1] Pos[2] 10000
scoreboard players operation tempx int -= @e[tag=tmp2,limit=1] mpar_x
scoreboard players operation tempy int -= @e[tag=tmp2,limit=1] mpar_y
scoreboard players operation tempz int -= @e[tag=tmp2,limit=1] mpar_z
scoreboard players set min int 0
scoreboard players set max int 10000
function math:random
scoreboard players operation tempx int *= random int
scoreboard players operation tempy int *= random int
scoreboard players operation tempz int *= random int
scoreboard players operation tempx int /= 10000 int
scoreboard players operation tempy int /= 10000 int
scoreboard players operation tempz int /= 10000 int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation tempx int += @e[tag=tmp2,limit=1] mpar_x
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation tempy int += @e[tag=tmp2,limit=1] mpar_y
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation tempz int += @e[tag=tmp2,limit=1] mpar_z
execute at @s unless entity @e[type=fireball,distance=..1.5] run summon fireball ~ ~ ~ {direction:[0.0d,0.0d,0.0d],ExplosionPower:3,Tags:["tmp3"]}
execute store result entity @e[tag=tmp3,limit=1] power[0] double 0.00001 run scoreboard players get @e[tag=tmp2,limit=1] mpar_u
execute store result entity @e[tag=tmp3,limit=1] power[1] double 0.00001 run scoreboard players get @e[tag=tmp2,limit=1] mpar_v
execute store result entity @e[tag=tmp3,limit=1] power[2] double 0.00001 run scoreboard players get @e[tag=tmp2,limit=1] mpar_w
tag @e remove tmp1
tag @e remove tmp3