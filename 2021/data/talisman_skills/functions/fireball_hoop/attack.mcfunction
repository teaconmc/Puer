execute unless entity @s[tag=attack0] run function talisman_skills:fireball_hoop/attack0
execute at @e[tag=mhoop_har,distance=..10] run particle barrier ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s mpar_tick 1
execute if score @s mpar_tick matches 20.. run function talisman_skills:fireball_hoop/attack1