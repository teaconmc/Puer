tag @e[tag=test1,tag=!linese] add test2
tag @e remove test1
execute positioned 0.0 10.0 0.0 at @e[sort=random,tag=test2,limit=10] run summon area_effect_cloud ~ ~ ~ {Tags:["linese","mpar_custom","mpar_flame","test1"],Motion:[0.3,0.2],Duration:100}
execute positioned 0.0 10.0 0.0 at @e[sort=random,tag=test2,limit=10] run summon area_effect_cloud ~ ~ ~ {Tags:["linese","mpar_custom","mpar_flame","test1"],Motion:[0.3,0.2],Duration:100}
execute positioned 0.0 10.0 0.0 at @e[sort=random,tag=test2,limit=10] run summon area_effect_cloud ~ ~ ~ {Tags:["linese","mpar_custom","mpar_flame","test1"],Motion:[0.3,0.2],Duration:100}
kill @e[tag=test2]
execute as @e[tag=linese] run function math:particles/test6