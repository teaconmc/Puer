summon area_effect_cloud ~ ~ ~ {Tags:["stmp"]}
execute store result score stempx int run data get entity @e[tag=stmp,limit=1] Pos[0] 100
execute store result score stemp int run data get entity @s Pos[0] 100
scoreboard players operation stempx int -= stemp int
execute store result score input int run scoreboard players operation stempx int *= stempx int
execute store result score stempx int run data get entity @e[tag=stmp,limit=1] Pos[1] 100
execute store result score stemp int run data get entity @s Pos[1] 100
scoreboard players operation stempx int -= stemp int
scoreboard players operation stempx int *= stempx int
scoreboard players operation input int += stempx int
execute store result score stempx int run data get entity @e[tag=stmp,limit=1] Pos[2] 100
execute store result score stemp int run data get entity @s Pos[2] 100
scoreboard players operation stempx int -= stemp int
scoreboard players operation stempx int *= stempx int
scoreboard players operation input int += stempx int
function math:0sqrt
kill @e[tag=stmp]