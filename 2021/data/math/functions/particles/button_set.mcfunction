execute as @e[tag=button] run data modify entity @s Motion set value [0.0,0.0,0.0]
execute as @e[tag=button,tag=!owned] at @s at @a[distance=..6,tag=!cbutton] run function math:particles/button
execute as @e[tag=button,tag=owned] at @s at @a[distance=..6,tag=!cbutton] if score @p mpar_id = @s mpar_id run function math:particles/button
execute as @e[tag=sbutton,tag=!owned] at @s at @a[distance=..6,tag=!cbutton] run function math:particles/sbutton
execute as @e[tag=sbutton,tag=owned] at @s at @a[distance=..6,tag=!cbutton] if score @p mpar_id = @s mpar_id run function math:particles/sbutton
execute as @e[tag=button1] at @s run function math:particles/button/button1
execute as @e[tag=sbutton1] at @s run function math:particles/sbutton/sbutton1