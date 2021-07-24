scoreboard players add @e[type=#talisman_skills:withermob,distance=..10,limit=1] talisman_id 0
execute unless score @e[type=#talisman_skills:withermob,distance=..10,limit=1] talisman_id matches 1.. store result score @e[type=#talisman_skills:wither_mob,distance=..10,limit=1] talisman_id run scoreboard players add #id talisman_id 1
scoreboard players operation @s int = @e[type=#talisman_skills:withermob,distance=..10,limit=1] talisman_id
tag @s add targeted