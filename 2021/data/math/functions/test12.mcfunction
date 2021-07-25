scoreboard players set y int 600000
summon item ~ 180.0 ~ {Item:{id:"minecraft:glass",Count:1b,tag:{line:[[5.0d,6.0d],[1.0d,1.0d]]}},Tags:["input","tmp"]}
summon item ~ 180.0 ~ {Item:{id:"minecraft:glass",Count:1b,tag:{line:[[5.0d,8.0d],[1.0d,-1.0d]]}},Tags:["input1","tmp"]}
execute as @e[tag=tmp] run function math:2line
function math:2cross
execute at @e[tag=point] run particle end_rod
execute at @e[tag=result] run setblock ~ ~ ~ red_wool
kill @e[tag=tmp]