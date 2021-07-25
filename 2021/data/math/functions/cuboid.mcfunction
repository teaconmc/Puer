tag @e remove result
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp","stmp1"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp","stmp2"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp","stmp3"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp","stmp4"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp","stmp5"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp","stmp6"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp","stmp7"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp","stmp8"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp","stmp9"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp","stmp10"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp","stmp11"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp","stmp12"]}

tag @s add stmp80

execute as @e[tag=stmp1,limit=1] run function math:cube1
execute as @e[tag=stmp2,limit=1] run function math:cube2
execute as @e[tag=stmp4,limit=1] run function math:cube3
execute as @e[tag=stmp3,limit=1] run function math:cube4



execute as @e[tag=stmp5,limit=1] run function math:cube5
execute as @e[tag=stmp6,limit=1] run function math:cube6
execute as @e[tag=stmp7,limit=1] run function math:cube8
execute as @e[tag=stmp8,limit=1] run function math:cube7




execute as @e[tag=stmp9,limit=1] run function math:cube9
execute as @e[tag=stmp10,limit=1] run function math:cube10
execute as @e[tag=stmp12,limit=1] run function math:cube11
execute as @e[tag=stmp11,limit=1] run function math:cube12

tag @e remove stmp80

execute as @e[tag=stmp1] at @s facing entity @e[tag=stmp2,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=stmp2] at @s facing entity @e[tag=stmp3,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=stmp3] at @s facing entity @e[tag=stmp4,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=stmp4] at @s facing entity @e[tag=stmp1,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=stmp5] at @s facing entity @e[tag=stmp9,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=stmp6] at @s facing entity @e[tag=stmp10,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=stmp7] at @s facing entity @e[tag=stmp11,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=stmp8] at @s facing entity @e[tag=stmp12,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=stmp9] at @s facing entity @e[tag=stmp10,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=stmp10] at @s facing entity @e[tag=stmp11,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=stmp11] at @s facing entity @e[tag=stmp12,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=stmp12] at @s facing entity @e[tag=stmp9,limit=1] feet run tp @s ~ ~ ~ ~ ~

execute store result score stemp1 int run data get entity @s Item.tag.cube[0][0]
execute store result score stemp2 int run data get entity @s Item.tag.cube[0][1]
execute store result score stemp3 int run data get entity @s Item.tag.cube[0][2]
execute store result score stemp4 int run data get entity @s Item.tag.cube[1][0]
execute store result score stemp5 int run data get entity @s Item.tag.cube[1][1]
execute store result score stemp6 int run data get entity @s Item.tag.cube[1][2]
scoreboard players operation stemp4 int -= stemp1 int
scoreboard players operation stemp5 int -= stemp2 int
scoreboard players operation stemp6 int -= stemp3 int
execute if score stemp4 int matches ..1 run scoreboard players operation stemp4 int *= -1 int
execute if score stemp5 int matches ..1 run scoreboard players operation stemp5 int *= -1 int
execute if score stemp6 int matches ..1 run scoreboard players operation stemp6 int *= -1 int

scoreboard players operation @e[tag=stmp1] int = stemp6 int
scoreboard players operation @e[tag=stmp2] int = stemp4 int
scoreboard players operation @e[tag=stmp3] int = stemp6 int
scoreboard players operation @e[tag=stmp4] int = stemp4 int
scoreboard players operation @e[tag=stmp5] int = stemp5 int
scoreboard players operation @e[tag=stmp6] int = stemp5 int
scoreboard players operation @e[tag=stmp7] int = stemp5 int
scoreboard players operation @e[tag=stmp8] int = stemp5 int
scoreboard players operation @e[tag=stmp9] int = stemp6 int
scoreboard players operation @e[tag=stmp10] int = stemp4 int
scoreboard players operation @e[tag=stmp11] int = stemp6 int
scoreboard players operation @e[tag=stmp12] int = stemp4 int

execute as @e[tag=stmp] run function math:loop4

execute as @e[tag=stmp13] store result entity @s Duration short 1 run scoreboard players get duration int

kill @e[tag=stmp]
tag @e remove stmp13