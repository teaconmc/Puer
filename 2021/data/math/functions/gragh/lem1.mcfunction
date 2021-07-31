scoreboard players add θ cn 1000
scoreboard players operation input int = θ cn
scoreboard players operation input int += θ cn
function math:4cos
scoreboard players operation input int = result int
function math:4sqrt
scoreboard players operation ρ cn = result int
scoreboard players operation ρ cn *= a int
scoreboard players operation ρ cn /= 10000 int
function math:cn/polarcn
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["painter","tmp"],Duration:10000s}
scoreboard players operation x cn += x int
scoreboard players operation z cn += z int
execute store result entity @e[tag=tmp,limit=1] Pos[0] double 0.0001 run scoreboard players get x cn
execute store result entity @e[tag=tmp,limit=1] Pos[1] double 0.0001 run scoreboard players get y int
execute store result entity @e[tag=tmp,limit=1] Pos[2] double 0.0001 run scoreboard players get z cn
execute if score ρ cn matches ..-1 run kill @e[tag=tmp]
tag @e remove tmp
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["painter","tmp"],Duration:10000s}
scoreboard players operation x cn -= x int
scoreboard players operation z cn -= z int
scoreboard players operation x cn -= x int
scoreboard players operation z cn -= z int
execute as @e[tag=tmp,limit=1] run function math:gragh/lem2
execute if score ρ cn matches ..-1 run kill @e[tag=tmp]
tag @e remove tmp
execute if score θ cn matches ..900000 run function math:gragh/lem1