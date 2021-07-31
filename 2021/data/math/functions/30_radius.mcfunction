tag @e remove result
summon area_effect_cloud ~ ~ ~ {Rotation:[0.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[12.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[24.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[36.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[48.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[60.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[72.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[84.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[96.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[108.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[120.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[132.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[144.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[156.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[168.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[180.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[192.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[204.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[216.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[228.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[240.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[252.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[264.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[276.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[288.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[300.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[312.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[324.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[336.0f,0.0f],Tags:["result"]}




summon area_effect_cloud ~ ~ ~ {Rotation:[348.0f,0.0f],Tags:["result"]}




execute store result score stemp1 int run scoreboard players operation stemp int = r int
scoreboard players operation stemp int %= 10 int
scoreboard players operation stemp1 int /= 10 int
execute if score stemp int matches 1 as @e[tag=result] at @s run tp @s ^ ^ ^0.1
execute if score stemp int matches 2 as @e[tag=result] at @s run tp @s ^ ^ ^0.2
execute if score stemp int matches 3 as @e[tag=result] at @s run tp @s ^ ^ ^0.3
execute if score stemp int matches 4 as @e[tag=result] at @s run tp @s ^ ^ ^0.4
execute if score stemp int matches 5 as @e[tag=result] at @s run tp @s ^ ^ ^0.5
execute if score stemp int matches 6 as @e[tag=result] at @s run tp @s ^ ^ ^0.6
execute if score stemp int matches 7 as @e[tag=result] at @s run tp @s ^ ^ ^0.7
execute if score stemp int matches 8 as @e[tag=result] at @s run tp @s ^ ^ ^0.8
execute if score stemp int matches 9 as @e[tag=result] at @s run tp @s ^ ^ ^0.9

scoreboard players operation stemp int = stemp1 int
scoreboard players operation stemp int %= 10 int
scoreboard players operation stemp1 int /= 10 int
execute if score stemp int matches 1 as @e[tag=result] at @s run tp @s ^ ^ ^1.0
execute if score stemp int matches 2 as @e[tag=result] at @s run tp @s ^ ^ ^2.0
execute if score stemp int matches 3 as @e[tag=result] at @s run tp @s ^ ^ ^3.0
execute if score stemp int matches 4 as @e[tag=result] at @s run tp @s ^ ^ ^4.0
execute if score stemp int matches 5 as @e[tag=result] at @s run tp @s ^ ^ ^5.0
execute if score stemp int matches 6 as @e[tag=result] at @s run tp @s ^ ^ ^6.0
execute if score stemp int matches 7 as @e[tag=result] at @s run tp @s ^ ^ ^7.0
execute if score stemp int matches 8 as @e[tag=result] at @s run tp @s ^ ^ ^8.0
execute if score stemp int matches 9 as @e[tag=result] at @s run tp @s ^ ^ ^9.0


execute if score stemp1 int matches 1 as @e[tag=result] at @s run tp @s ^ ^ ^10.0
execute if score stemp1 int matches 2 as @e[tag=result] at @s run tp @s ^ ^ ^20.0
execute if score stemp1 int matches 3 as @e[tag=result] at @s run tp @s ^ ^ ^30.0
execute if score stemp1 int matches 4 as @e[tag=result] at @s run tp @s ^ ^ ^40.0
execute if score stemp1 int matches 5 as @e[tag=result] at @s run tp @s ^ ^ ^50.0
execute if score stemp1 int matches 6 as @e[tag=result] at @s run tp @s ^ ^ ^60.0
execute if score stemp1 int matches 7 as @e[tag=result] at @s run tp @s ^ ^ ^70.0
execute if score stemp1 int matches 8 as @e[tag=result] at @s run tp @s ^ ^ ^80.0
execute if score stemp1 int matches 9.. as @e[tag=result] at @s run tp @s ^ ^ ^90.0