#rotation1
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["vtmp1","vtmp"]}
data modify entity @e[tag=vtmp1,limit=1] Pos set from entity @s Item.tag.vector.pos
execute as @e[tag=vtmp1] at @s positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
data modify entity @s Item.tag.vector merge value {rot:[0.0,0.0]}
execute store result entity @s Item.tag.vector.rot[0] double 1 store result score vrx int run data get entity @e[tag=vtmp1,limit=1] Rotation[0] -10000
execute store result entity @s Item.tag.vector.rot[1] double 1 store result score vry int run data get entity @e[tag=vtmp1,limit=1] Rotation[1] -10000
kill @e[tag=vtmp]