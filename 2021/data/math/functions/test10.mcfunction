summon item 0.0 0.0 0.0 {Tags:["tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{cube:[[-10.0d,19.0d,-131.0d],[-24.0d,28.0d,-144.0d]]}}}
execute as @e[tag=tmp] run function math:cuboid1
execute at @e[tag=point] run particle end_rod
kill @e[tag=tmp]
summon area_effect_cloud -10.0 19.0 -131.0 {Tags:["tmp"]}
execute as @e[tag=tmp] positioned -24.0 28.0 -144.0 run function math:cuboid-sele
kill @e[tag=tmp]
kill @e[tag=result]