execute if entity @s[tag=mpar_player] run function math:particles/textbox/player
execute at @s run scoreboard players set @e[tag=textbox0,distance=..10,limit=1,sort=nearest] mpar_aec 0
execute at @s run scoreboard players set @e[tag=textbox1,distance=..10,limit=1,sort=nearest] mpar_aec 0
execute at @s run scoreboard players set @e[tag=textbox2,distance=..10,limit=1,sort=nearest] mpar_aec 0
execute if entity @a[distance=..6] unless entity @s[tag=mpar_player] run function math:particles/textbox/down
execute unless entity @a[distance=..10] if entity @s[tag=mpar_player] run function math:particles/textbox/up