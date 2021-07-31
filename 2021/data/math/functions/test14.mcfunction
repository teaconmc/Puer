summon item ~ 180.0 ~ {Tags:["tmp","input"],Item:{id:"minecraft:glass",Count:1b,tag:{length:2.8,line:[[1.0d,60.0d,1.0d],[-1.0d,60.0d,-1.0d]]}}}
summon item ~ 180.0 ~ {Tags:["tmp","input1"],Item:{id:"minecraft:glass",Count:1b,tag:{length:2.8,line:[[-1.0d,60.0d,1.0d],[1.0d,60.0d,-1.0d]]}}}
execute as @e[tag=tmp] run function math:line
function math:cross
execute at @e[tag=point] run particle end_rod
execute at @e[tag=cross] run particle flame
kill @e[tag=tmp]