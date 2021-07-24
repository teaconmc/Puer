summon area_effect_cloud ~ ~ ~ {Tags:["stmp","ssphere"],Duration:361,Rotation:[0.0f,90.0f]}
execute store result score stempx0 int run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score stempy0 int run data get entity @e[tag=stmp,limit=1] Pos[1] 10000
execute store result score stempz0 int run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
tag @e remove stmp