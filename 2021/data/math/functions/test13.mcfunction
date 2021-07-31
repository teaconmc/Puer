#-628 4 -165 -620 4 -158
#-628 4 -154 -620 4 -161
scoreboard players set y int 50000
summon item ~ 180.0 ~ {Tags:["tmp","input"],Item:{id:"minecraft:glass",Count:1b,tag:{line:[[-620.9644661545753d,-157.96446615457535d],[-628.0358729958534d,-165.0351949930191d]]}}}
summon item ~ 180.0 ~ {Tags:["tmp","input1"],Item:{id:"minecraft:glass",Count:1b,tag:{line:[[-628.0355338454247d,-153.96446615457535d],[-620.9644661545753d,-161.03553384542465d]]}}}
execute as @e[tag=tmp] run function math:2line
function math:2cross
execute at @e[tag=point] run particle end_rod
execute at @e[tag=cross] run particle flame
kill @e[tag=tmp]