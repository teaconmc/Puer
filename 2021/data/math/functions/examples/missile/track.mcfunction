execute at @e[tag=double_missile_target] if score @e[tag=double_missile_target,limit=1,sort=nearest] id = @s id run tag @e[tag=double_missile_target,limit=1,sort=nearest] add tmp0
execute at @s run particle minecraft:end_rod ~ ~ ~ 0.0 0.0 0.0 0 1 force @a

execute store result score temp0 int run data get entity @s Motion[0] 10000
execute store result score temp1 int run data get entity @s Motion[1] 10000
execute store result score temp2 int run data get entity @s Motion[2] 10000

summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp"]}
data modify entity @e[tag=tmp,limit=1] Pos set from entity @s Motion
execute positioned 0.0 0.0 0.0 facing entity @e[tag=tmp,limit=1] feet run tp @e[tag=tmp,limit=1] ^ ^ ^-0.05
execute store result score temp0-1 int run data get entity @e[tag=tmp,limit=1] Pos[0] 10000
execute store result score temp1-1 int run data get entity @e[tag=tmp,limit=1] Pos[1] 10000
execute store result score temp2-1 int run data get entity @e[tag=tmp,limit=1] Pos[2] 10000

execute at @s facing entity @e[tag=tmp0,limit=1] feet positioned 0.0 0.0 0.0 run tp @e[tag=tmp,limit=1] ^ ^ ^0.08
execute store result score temp0-2 int run data get entity @e[tag=tmp,limit=1] Pos[0] 10000
execute store result score temp1-2 int run data get entity @e[tag=tmp,limit=1] Pos[1] 10000
execute store result score temp2-2 int run data get entity @e[tag=tmp,limit=1] Pos[2] 10000

scoreboard players operation temp0 int += temp0-1 int
scoreboard players operation temp1 int += temp1-1 int
scoreboard players operation temp2 int += temp2-1 int
scoreboard players operation temp0 int += temp0-2 int
scoreboard players operation temp1 int += temp1-2 int
scoreboard players operation temp2 int += temp2-2 int

execute store result entity @s Motion[0] double 0.0001 run scoreboard players get temp0 int
execute store result entity @s Motion[1] double 0.00005 run scoreboard players get temp1 int
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get temp2 int

kill @e[tag=tmp]

scoreboard players add @s t 1
execute at @s if entity @e[tag=tmp0,distance=..20] if score @s amp matches 1.. run scoreboard players remove @s amp 2


execute store result score temp0 int run data get entity @s Pos[0] 10000
execute store result score temp1 int run data get entity @s Pos[1] 10000
execute store result score temp2 int run data get entity @s Pos[2] 10000

summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp","tmp3"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp1","tmp3"]}

#tellraw @a [{"score":{"name":"@s","objective":"amp"}}]

scoreboard players operation θ int = @s t
scoreboard players operation θ int *= 100000 int
scoreboard players operation θ int += @s angel
function math:trif/sincos1
scoreboard players operation @s u = cos int
scoreboard players operation @s u *= @s amp
scoreboard players operation @s v = sin int
scoreboard players operation @s v *= @s amp
#tellraw @a [{"score":{"name":"@s","objective":"u"}},{"text":","},{"score":{"name":"@s","objective":"w"}}]
function math:coords/motion_uvw_xyz
scoreboard players operation @s x /= 5000 int
scoreboard players operation @s y /= 5000 int
scoreboard players operation @s z /= 5000 int
scoreboard players operation @s x += temp0 int
scoreboard players operation @s y += temp1 int
scoreboard players operation @s z += temp2 int
execute store result entity @e[tag=tmp,limit=1] Pos[0] double 0.0001 run scoreboard players get @s x
execute store result entity @e[tag=tmp,limit=1] Pos[1] double 0.0001 run scoreboard players get @s y
execute store result entity @e[tag=tmp,limit=1] Pos[2] double 0.0001 run scoreboard players get @s z

scoreboard players operation θ int = @s t
scoreboard players operation θ int *= 100000 int
scoreboard players operation θ int += @s angel1
function math:trif/sincos1
scoreboard players operation @s u = cos int
scoreboard players operation @s u *= @s amp
scoreboard players operation @s v = sin int
scoreboard players operation @s v *= @s amp
function math:coords/motion_uvw_xyz
scoreboard players operation @s x /= 5000 int
scoreboard players operation @s y /= 5000 int
scoreboard players operation @s z /= 5000 int
scoreboard players operation @s x += temp0 int
scoreboard players operation @s y += temp1 int
scoreboard players operation @s z += temp2 int
execute store result entity @e[tag=tmp1,limit=1] Pos[0] double 0.0001 run scoreboard players get @s x
execute store result entity @e[tag=tmp1,limit=1] Pos[1] double 0.0001 run scoreboard players get @s y
execute store result entity @e[tag=tmp1,limit=1] Pos[2] double 0.0001 run scoreboard players get @s z

execute at @e[tag=tmp3] run particle minecraft:end_rod ~ ~ ~ 0.0 0.0 0.0 0 1 force @a
execute at @e[tag=tmp3] if entity @e[tag=tmp0,distance=..1] run function math:examples/missile/explode

execute if score @s t matches 300.. at @s run function math:examples/missile/explode

kill @e[tag=tmp3]


tag @e remove tmp0