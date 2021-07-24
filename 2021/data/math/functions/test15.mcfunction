summon item ~ ~ ~ {Tags:["tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{vector:{pos:[1.0,0.0,0.0]}}}}
summon item ~ ~1 ~ {Tags:["tmp1"],Item:{id:"minecraft:glass",Count:1b,tag:{vector:{pos:[0.0,1.0,0.0]}}}}
execute as @e[tag=tmp] at @e[tag=tmp1] run function math:vector/cos
kill @e[tag=tmp]
kill @e[tag=tmp1]
tellraw @a {"score":{"name":"cos","objective":"int"}}