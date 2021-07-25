scoreboard players add roctx int 50
scoreboard players operation rocty int = roctx int
function math:coords/round/temp
summon area_effect_cloud 0 0 0 {Tags:["printer","stmpu","point"],NoGravity:true}
scoreboard players operation roctx1 int += x int
scoreboard players operation rocty1 int += z int
execute as @e[tag=stmpu] run function math:gragh/ajmd1
tag @e remove stmpu