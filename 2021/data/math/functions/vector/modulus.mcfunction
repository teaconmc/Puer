#modulus
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["vtmp2","vtmp"]}
data modify entity @e[tag=vtmp2,limit=1] Pos set from entity @s Item.tag.vector.pos
execute positioned 0.0 0.0 0.0 facing entity @e[tag=vtmp2,limit=1] feet run summon area_effect_cloud ^ ^ ^1 {Tags:["vtmp1","vtmp"]}
execute store result score mod int run data get entity @e[tag=vtmp2,limit=1] Pos[0] 100000
execute store result score vtmp int run data get entity @e[tag=vtmp1,limit=1] Pos[0] 1000
execute store result score vtmp1 int run data get entity @e[tag=vtmp2,limit=1] Pos[1] 100000
execute store result score vtmp2 int run data get entity @e[tag=vtmp1,limit=1] Pos[1] 1000
execute store result score vtmp3 int run data get entity @e[tag=vtmp2,limit=1] Pos[2] 100000
execute store result score vtmp4 int run data get entity @e[tag=vtmp1,limit=1] Pos[2] 1000
scoreboard players operation mod int /= vtmp int
scoreboard players operation vtmp1 int /= vtmp2 int
scoreboard players operation vtmp3 int /= vtmp4 int
scoreboard players operation mod int > vtmp1 int
scoreboard players operation mod int > vtmp3 int
data modify entity @s Item.tag.vector merge value {mod:0.0}
execute store result entity @s Item.tag.vector.mod double 0.01 run scoreboard players get mod int
kill @e[tag=vtmp]