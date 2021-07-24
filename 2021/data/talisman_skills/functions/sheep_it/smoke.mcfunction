tag @s add sheep_it_smoke
#视角
execute positioned as @s run tp @s ~ ~ ~ ~ ~
#粒子
scoreboard players set min int 1
scoreboard players set max int 64
function math:random
execute if score random int matches 1..48 run tag @s add sheep_it_cloud
execute if score random int matches 49..60 run tag @s add sheep_it_firework
execute if score random int matches 61..64 run tag @s add sheep_it_endrod
#视角
scoreboard players set min int 12
scoreboard players set max int 15
function math:random
execute store result entity @s Duration int 1 run scoreboard players get random int