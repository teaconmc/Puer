tag @e remove result
summon area_effect_cloud ~ ~ ~ {Tags:["mvstmp"]}
execute store result score stemp1 int run data get entity @e[tag=mvstmp,limit=1] Pos[0] 10000
execute store result score stemp2 int run data get entity @e[tag=mvstmp,limit=1] Pos[2] 10000
execute store result score stemp3 int run data get entity @s Pos[0] 10000
execute store result score stemp4 int run data get entity @s Pos[2] 10000
scoreboard players operation stemp3 int += stemp1 int
scoreboard players operation stemp4 int += stemp2 int
execute as @e[tag=mvstmp,limit=1] run function math:mid-ver1
data modify entity @e[tag=mvstmp,limit=1] Pos[1] set from entity @s Pos[1]
tag @s add mvstmp1
execute as @e[tag=mvstmp] at @s facing entity @e[tag=mvstmp1,limit=1] feet run tp @s ~ ~ ~ ~90.0 ~
execute as @e[tag=mvstmp,limit=1] at @s run tp @s ^ ^ ^1.0
execute as @e[tag=mvstmp] at @s run tp @s ~ ~ ~ ~180.0 ~
execute as @e[tag=mvstmp] at @s positioned ^ ^ ^2.0 run function math:2line-cre
tag @e[tag=result] add mid-ver
tag @e remove mvstmp1
kill @e[tag=mvstmp]