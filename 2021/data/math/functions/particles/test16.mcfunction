scoreboard players operation r int = mpar_omega int
scoreboard players operation r int /= 1000 int
execute at @e[tag=test,limit=1] facing entity @p eyes rotated ~ ~ run function math:90_radius_f
execute at @e[tag=result] run particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=test,limit=1] facing entity @p eyes rotated ~90 ~ run function math:90_radius_f
execute at @e[tag=result] run particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=test,limit=1] facing entity @p eyes rotated ~ ~75 run function math:90_radius_f
execute at @e[tag=result] run particle end_rod ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=test,limit=1] at @s facing entity @p eyes rotated ~ ~ run tp @s ~ ~ ~ ~ ~

execute at @s positioned ~ ~1.62 ~ as @e[tag=test] run function math:l_p-cross
execute as @e[tag=math_marker,limit=1] run function math:particles/test17

execute if data entity @s Inventory[{Slot:-106b}].tag{r:1} run scoreboard players add mpar_omega int 2300
execute if data entity @s Inventory[{Slot:-106b}].tag{r:0} run scoreboard players remove mpar_omega int 2300
scoreboard players operation mpar_omega int > 0 int
scoreboard players operation mpar_omega int < 100000 int
