tag @e remove result
summon area_effect_cloud ~ ~ ~ {Tags:["point","tmp","result"]}
execute as @e[tag=tmp] run function math:point1
tag @e remove tmp