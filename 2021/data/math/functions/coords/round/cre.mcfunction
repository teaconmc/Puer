kill @e[tag=rouco1]
summon area_effect_cloud 0.0 80.0 0.0 {Tags:["cank","rouco","rouco1"],Rotation:[0.0,0.0]}
execute store result entity @e[tag=rouco1,limit=1] Duration int 20 run scoreboard players get rcdrat int
scoreboard players set @e[tag=rouco1] int 0
function math:coords/round/cre1