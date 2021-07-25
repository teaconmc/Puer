summon area_effect_cloud 0.0 0.0 0.0 {Tags:["sqrt","sqrt0"],Duration:10}
summon armor_stand 0.0 0.0 0.0 {Tags:["sqrt","sqrt1"],Invisible:true,Invulnerable:true}
execute if score sqtimes int = 0 int as @e[tag=sqrt0] store result entity @s Pos[1] double 1 run scoreboard players get sqrt int
execute if score sqtimes int = 1 int as @e[tag=sqrt0] store result entity @s Pos[1] double 0.01 run scoreboard players get sqrt int
execute if score sqtimes int = 2 int as @e[tag=sqrt0] store result entity @s Pos[1] double 0.0001 run scoreboard players get sqrt int
execute if score sqtimes int = 3 int as @e[tag=sqrt0] store result entity @s Pos[1] double 0.000001 run scoreboard players get sqrt int
execute if score sqtimes int = 4 int as @e[tag=sqrt0] store result entity @s Pos[1] double 0.00000001 run scoreboard players get sqrt int
function math:sqrt/solve1