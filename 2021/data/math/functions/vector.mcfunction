execute as @e[tag=math_marker] run function math:loop32-1
tp @e[tag=math_marker] ~ ~ ~
scoreboard players operation result int < 100 int
execute as @e[tag=math_marker] at @s run function math:loop32
execute at @e[tag=math_marker] positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1 {Tags:["stmp","stmp0"]}
execute store result score stempu0 int store result score stempn0 int run data get entity @e[tag=stmp0,limit=1] Pos[0] 10000
execute store result score stempu1 int store result score stempn1 int run data get entity @e[tag=stmp0,limit=1] Pos[1] 10000
execute store result score stempu2 int store result score stempn2 int run data get entity @e[tag=stmp0,limit=1] Pos[2] 10000

summon area_effect_cloud ~ ~ ~ {Tags:["stmp","stmp2","stmp3"]}
summon area_effect_cloud ~ ~ ~ {Tags:["stmp","stmp2","stmp4"]}

execute at @e[tag=math_marker] facing entity @p eyes positioned 0.0 0.0 0.0 run tp @e[tag=stmp0,limit=1] ^ ^ ^1
execute store result score stempm0 int run data get entity @e[tag=stmp0,limit=1] Pos[0] 10000
execute store result score stempm1 int run data get entity @e[tag=stmp0,limit=1] Pos[1] 10000
execute store result score stempm2 int run data get entity @e[tag=stmp0,limit=1] Pos[2] 10000

scoreboard players operation stempv0 int = stempm1 int
scoreboard players operation stemp int = stempn2 int
scoreboard players operation stempv0 int *= stemp int
scoreboard players operation stemp int = stempm2 int
scoreboard players operation stemp1 int = stempn1 int
scoreboard players operation stemp int *= stemp1 int
scoreboard players operation stempv0 int -= stemp int
scoreboard players operation stempv0 int /= 10000 int

scoreboard players operation stempv1 int = stempm2 int
scoreboard players operation stemp int = stempn0 int
scoreboard players operation stempv1 int *= stemp int
scoreboard players operation stemp int = stempm0 int
scoreboard players operation stemp1 int = stempn2 int
scoreboard players operation stemp int *= stemp1 int
scoreboard players operation stempv1 int -= stemp int
scoreboard players operation stempv1 int /= 10000 int

scoreboard players operation stempv2 int = stempm0 int
scoreboard players operation stemp int = stempn1 int
scoreboard players operation stempv2 int *= stemp int
scoreboard players operation stemp int = stempm1 int
scoreboard players operation stemp1 int = stempn0 int
scoreboard players operation stemp int *= stemp1 int
scoreboard players operation stempv2 int -= stemp int
scoreboard players operation stempv2 int /= 10000 int

execute store result score stempx1 int store result score stempx0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score stempy1 int store result score stempy0 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score stempz1 int store result score stempz0 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000

execute as @e[tag=stmp3] run function math:loop32-2
execute as @e[tag=stmp4] run function math:loop32-3

execute as @e[tag=stmp2] positioned as @e[tag=math_marker,limit=1] facing entity @s feet run tp @s ~ ~ ~ ~ ~

scoreboard players set result int 10
execute as @e[tag=stmp3] at @s run function math:loop32
scoreboard players set result int 10
execute as @e[tag=stmp4] at @s run function math:loop32

kill @e[tag=stmp]