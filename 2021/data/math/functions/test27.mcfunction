scoreboard players set u cn 5000
scoreboard players set v cn 5000
scoreboard players set w cn 80000
execute at @s positioned ~ ~1.5 ~ run function math:cn/local-f
summon area_effect_cloud ~ ~ ~ {Tags:["tmp"]}
execute store result entity @e[tag=tmp,limit=1] Pos[0] double 0.0001 run scoreboard players get x cn
execute store result entity @e[tag=tmp,limit=1] Pos[1] double 0.0001 run scoreboard players get y cn
execute store result entity @e[tag=tmp,limit=1] Pos[2] double 0.0001 run scoreboard players get z cn
execute at @e[tag=tmp] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 0 100 force @a
kill @e[tag=tmp]