execute if entity @s[tag=rotator] run function math:particles/rotator/custom
execute if entity @s[tag=parabola] run function math:particles/parabola/custom
execute if entity @s[tag=linese] run function math:particles/linese/custom
execute if entity @s[tag=circle] run function math:particles/circle/custom
execute if entity @s[tag=progc] run function math:particles/progc/custom
execute if entity @s[tag=textbox] run function math:particles/textbox/custom
execute if entity @s[tag=lineve] run function math:particles/lineve/custom
execute if entity @s[tag=menu] run function math:particles/menu/custom
execute if entity @s[tag=button] run function math:particles/button/custom
execute if entity @s[tag=sbutton] run function math:particles/sbutton/custom
#移除未初始化标签
tag @s remove mpar_custom