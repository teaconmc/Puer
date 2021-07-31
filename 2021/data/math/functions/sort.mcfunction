scoreboard players add @e[tag=sort] scb 0
scoreboard players set @e[tag=sort] sort 0
execute as @e[tag=sort] run summon area_effect_cloud ~ ~ ~ {Tags:["stmp"]}
scoreboard players set @e[tag=stmp] int -2147483648
execute as @e[tag=sort] run scoreboard players operation @e[tag=stmp,scores={int=-2147483648},limit=1] int = @s scb
execute as @e[tag=stmp] store result entity @s Pos[1] double 0.0000001 run scoreboard players get @s int
scoreboard players set stemp int 0
execute positioned ~ -220 ~ as @e[tag=stmp,sort=nearest] store result score @s int run scoreboard players add stemp int 1
execute as @e[tag=stmp] run scoreboard players operation @e[tag=sort,scores={sort=0},limit=1] sort = @s int
kill @e[tag=stmp]