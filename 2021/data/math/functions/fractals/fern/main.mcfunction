scoreboard players add x int 1
execute if score x int matches 1001.. run scoreboard players add y int 1
execute if score x int matches 1001.. run scoreboard players set x int -1000
execute if score y int matches 1001.. run scoreboard players set y int -1000

summon item 0.0 0.0 0.0 {Item:{id:"minecraft:glass",Count:1b,tag:{input:[0.0,0.0],affine:[[0.0,0.0],[0.0,0.0],[0.0,0.0]]}},Tags:["tmp"]}
scoreboard players set min int 1
scoreboard players set min int 100
function math:random

execute as @e[tag=tmp] if score random int matches 1 run function math:fractals/fern/f1
execute as @e[tag=tmp] if score random int matches 2..86 run function math:fractals/fern/f2
execute as @e[tag=tmp] if score random int matches 87..93 run function math:fractals/fern/f3
execute as @e[tag=tmp] if score random int matches 94..100 run function math:fractals/fern/f4

execute at @e[tag=tmp] run setblock ~ 10 ~ green_wool
kill @e[tag=tmp]