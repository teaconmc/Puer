data modify entity @s Item.tag.affine set value [[-0.15,0.26],[0.28,0.24],[0.0,0.44]]
execute store result entity @s Item.tag.input[0] double 0.01 run scoreboard players get x int
execute store result entity @s Item.tag.input[1] double 0.01 run scoreboard players get y int

function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
#data modify entity @s Item.tag.input set from entity @s Item.tag.result
#function math:affine
tellraw @a {"nbt":"Item.tag.result","entity":"@s"}

execute store result entity @s Pos[0] double 0.001 run data get entity @s Item.tag.result[0] 10000
execute store result entity @s Pos[2] double 0.001 run data get entity @s Item.tag.result[1] 10000

execute at @s run summon area_effect_cloud ~ 10.0 ~ {Tags:["pixel"],Duration:400}