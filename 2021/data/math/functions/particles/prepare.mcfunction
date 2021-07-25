#根据粒子种类初始化数据
execute if entity @s[tag=rotator] run function math:particles/rotator/set
execute if entity @s[tag=parabola] run function math:particles/parabola/set
execute if entity @s[tag=linese] run function math:particles/linese/set
execute if entity @s[tag=circle] run function math:particles/circle/set
#移除未初始化标签
tag @s remove mpar_init