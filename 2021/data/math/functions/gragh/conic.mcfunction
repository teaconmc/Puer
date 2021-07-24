#r(θ)=L/(1-ecosθ)
scoreboard players add roctx int 10
scoreboard players operation θ int = roctx int
scoreboard players operation θ int *= 1000 int
function math:trif/cos
scoreboard players operation cos int *= ecc int
scoreboard players operation cos int -= 100000 int
scoreboard players operation cos int *= -1 int
scoreboard players operation rocty int = l int
scoreboard players operation rocty int *= 1000000 int
scoreboard players operation rocty int /= cos int
function math:coords/round/temp
scoreboard players operation roctx1 int += x int
scoreboard players operation rocty1 int += z int
summon area_effect_cloud 0 0 0 {Tags:["printer","stmpu"],NoGravity:true}
execute as @e[tag=stmpu] run function math:gragh/conic1
tag @e remove stmpu