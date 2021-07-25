function math:eyepos
execute at @e[tag=result] as @e[tag=tmp] run function math:if-raycast
data modify entity @e[scores={result=1},tag=tmp,limit=1] Glowing set value 1b
execute if score @s mpar_shift matches 1.. as @e[scores={result=1},tag=tmp] run function math:particles/textbox/close