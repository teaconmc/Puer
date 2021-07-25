#deco
data modify entity @s Item.tag.vector merge value {pos:[0.0,0.0,0.0]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["vtmp"]}
execute store result entity @e[tag=vtmp,limit=1] Rotation[0] double -0.0001 run data get entity @s Item.tag.vector.rot[0]
execute store result entity @e[tag=vtmp,limit=1] Rotation[1] double -0.0001 run data get entity @s Item.tag.vector.rot[1]
execute as @e[tag=vtmp] at @s run tp @s ^ ^ ^1
execute store result score vtmp1x int run data get entity @e[tag=vtmp,limit=1] Pos[0] 10000
execute store result score vtmp1y int run data get entity @e[tag=vtmp,limit=1] Pos[1] 10000
execute store result score vtmp1z int run data get entity @e[tag=vtmp,limit=1] Pos[2] 10000
execute store result score mod int run data get entity @s Item.tag.vector.mod 100
scoreboard players operation vtmp1x int *= mod int
scoreboard players operation vtmp1y int *= mod int
scoreboard players operation vtmp1z int *= mod int
execute store result entity @s Item.tag.vector.pos[0] double 0.000001 run scoreboard players get vtmp1x int
execute store result entity @s Item.tag.vector.pos[1] double 0.000001 run scoreboard players get vtmp1y int
execute store result entity @s Item.tag.vector.pos[2] double 0.000001 run scoreboard players get vtmp1z int
kill @e[tag=vtmp]