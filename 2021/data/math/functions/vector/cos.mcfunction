#cos
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["vtmp1","vtmp"]}
data modify entity @e[tag=vtmp1,limit=1] Pos set from entity @s Item.tag.vector.pos
execute positioned 0.0 0.0 0.0 facing entity @e[tag=vtmp1] feet run summon area_effect_cloud ^ ^ ^1 {Tags:["vtmp2","vtmp"]}
data modify entity @e[tag=vtmp1,limit=1] Pos set from entity @e[nbt={Item:{tag:{vector:{}}}},limit=1,sort=nearest] Item.tag.vector.pos
execute positioned 0.0 0.0 0.0 facing entity @e[tag=vtmp1] feet run tp @e[tag=vtmp1] ^ ^ ^1
execute store result score vtmp1x int run data get entity @e[tag=vtmp1,limit=1] Pos[0] 10000
execute store result score vtmp1y int run data get entity @e[tag=vtmp1,limit=1] Pos[1] 10000
execute store result score vtmp1z int run data get entity @e[tag=vtmp1,limit=1] Pos[2] 10000
execute store result score vtmp2x int run data get entity @e[tag=vtmp2,limit=1] Pos[0] 10000
execute store result score vtmp2y int run data get entity @e[tag=vtmp2,limit=1] Pos[1] 10000
execute store result score vtmp2z int run data get entity @e[tag=vtmp2,limit=1] Pos[2] 10000
scoreboard players operation vtmp1x int -= vtmp2x int
scoreboard players operation vtmp1x int *= vtmp1x int
scoreboard players operation vtmp1y int -= vtmp2y int
scoreboard players operation vtmp1y int *= vtmp1y int
scoreboard players operation vtmp1z int -= vtmp2z int
scoreboard players operation vtmp1z int *= vtmp1z int
scoreboard players operation vtmp1x int += vtmp1y int
scoreboard players operation vtmp1x int += vtmp1z int
scoreboard players set cos int 200000000
scoreboard players operation cos int -= vtmp1x int
scoreboard players operation cos int /= 2 int