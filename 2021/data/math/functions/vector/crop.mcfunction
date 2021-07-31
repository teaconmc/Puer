tag @e remove result

tag @e[nbt={Item:{tag:{vector:{}}}},limit=1,sort=nearest] add stmp
summon item ~ ~1 ~ {Item:{id:"minecraft:glass",Count:1b,tag:{vector:{pos:[0.0d,0.0d,0.0d]}}},Tags:["stmp1","result","vector"]}
execute store result score stemp1 int run data get entity @s Item.tag.vector.pos[0] 100
execute store result score stemp2 int run data get entity @s Item.tag.vector.pos[1] 100
execute store result score stemp3 int run data get entity @s Item.tag.vector.pos[2] 100
execute store result score stemp4 int run data get entity @e[tag=stmp,limit=1] Item.tag.vector.pos[0] 100
execute store result score stemp5 int run data get entity @e[tag=stmp,limit=1] Item.tag.vector.pos[1] 100
execute store result score stemp6 int run data get entity @e[tag=stmp,limit=1] Item.tag.vector.pos[2] 100
scoreboard players operation stemp7 int = stemp2 int
scoreboard players operation stemp8 int = stemp6 int
scoreboard players operation stemp7 int *= stemp8 int
scoreboard players operation stemp8 int = stemp3 int
scoreboard players operation stemp9 int = stemp5 int
scoreboard players operation stemp8 int *= stemp9 int
execute store result entity @e[tag=stmp1,limit=1] Item.tag.vector.pos[0] double 0.0001 run scoreboard players operation stemp7 int -= stemp8 int

scoreboard players operation stemp7 int = stemp3 int
scoreboard players operation stemp8 int = stemp4 int
scoreboard players operation stemp7 int *= stemp8 int
scoreboard players operation stemp8 int = stemp1 int
scoreboard players operation stemp9 int = stemp6 int
scoreboard players operation stemp8 int *= stemp9 int
execute store result entity @e[tag=stmp1,limit=1] Item.tag.vector.pos[1] double 0.0001 run scoreboard players operation stemp7 int -= stemp8 int

scoreboard players operation stemp7 int = stemp1 int
scoreboard players operation stemp8 int = stemp5 int
scoreboard players operation stemp7 int *= stemp8 int
scoreboard players operation stemp8 int = stemp2 int
scoreboard players operation stemp9 int = stemp4 int
scoreboard players operation stemp8 int *= stemp9 int
execute store result entity @e[tag=stmp1,limit=1] Item.tag.vector.pos[2] double 0.0001 run scoreboard players operation stemp7 int -= stemp8 int

tag @e remove stmp
tag @e remove stmp1