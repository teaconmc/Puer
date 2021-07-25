summon area_effect_cloud ~ ~ ~ {Tags:["stmp"]}
execute store result score stemp1 int run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score stemp2 int run data get entity @e[tag=stmp,limit=1] Pos[1] 10000
execute store result score stemp3 int run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
execute store result score resultx int run data get entity @s Pos[0] 10000
execute store result score resulty int run data get entity @s Pos[1] 10000
execute store result score resultz int run data get entity @s Pos[2] 10000
scoreboard players operation resultx int *= @s w
scoreboard players operation resulty int *= @s w
scoreboard players operation resultz int *= @s w
scoreboard players operation resultx int += stemp1 int
scoreboard players operation resulty int += stemp2 int
scoreboard players operation resultz int += stemp3 int
kill @e[tag=stmp]