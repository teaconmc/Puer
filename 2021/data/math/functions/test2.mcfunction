summon armor_stand ~ ~ ~ {Tags:["A","sort"],CustomName:"\"A\""}
summon armor_stand ~ ~ ~ {Tags:["B","sort"],CustomName:"\"B\""}
summon armor_stand ~ ~ ~ {Tags:["C","sort"],CustomName:"\"C\""}
summon armor_stand ~ ~ ~ {Tags:["D","sort"],CustomName:"\"D\""}
scoreboard players set @e[tag=A] scb 1
scoreboard players set @e[tag=B] scb 2
scoreboard players set @e[tag=C] scb 3
scoreboard players set @e[tag=D] scb 4
function math:sort
execute as @e[scores={sort=1}] run say @s
execute as @e[scores={sort=2}] run say @s
execute as @e[scores={sort=3}] run say @s
execute as @e[scores={sort=4}] run say @s
kill @e[tag=sort]