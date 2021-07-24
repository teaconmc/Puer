tag @s add tmp
execute at @s run tp @e[tag=button_set,tag=!tmp,distance=..0.3] 0.0 -1000.0 0.0
execute at @p positioned ~ ~1.62 ~ run function math:if-raycast
execute if score @s result matches 1 run data modify entity @s Glowing set value 1b

execute if score @s result matches 0 run scoreboard players set @s int1 0
execute if score @s result matches 1 if entity @s[tag=mpar_choice] run scoreboard players add @s int1 1
execute if score @s result matches 1 if entity @s[tag=!mpar_choice] unless entity @e[tag=tmp2,tag=mpar_choice] run scoreboard players add @s int1 1
execute if score @s int1 matches 1 at @s run playsound minecraft:item.armor.equip_chain player @p ~ ~ ~ 1
execute if score @s int1 matches ..5 run scoreboard players set @s result 0
execute if score @s int1 matches 6.. run scoreboard players set @s result 1
execute if score @s int1 matches 6.. run scoreboard players set @s int1 0
execute if score @s result matches 1 run function math:particles/sbutton/runc
tag @s remove tmp