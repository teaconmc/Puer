summon item 0.0 0.0 0.0 {Tags:["tmp10"],Item:{id:"minecraft:stone",Count:1b,tag:{num:[0,0,0,0,0,0,0,0,0]}},NoGravity:true}
execute if score input int matches 1.. run function math:array/break1
execute if score input int matches ..-1 run function math:array/break2
execute as @e[tag=tmp10] run data merge entity @s {Tags:["anum","tmp"]}