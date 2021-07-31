execute as @e[tag=rouco1] at @s run summon area_effect_cloud ^ ^ ^30 {Tags:["rouco2","cank"]}
execute store result entity @e[tag=rouco2,tag=!rouco,limit=1] Duration int 20 run scoreboard players get rcdrat int
execute as @e[tag=rouco1] run scoreboard players operation @e[tag=rouco2,tag=!rouco] int = @s int
tag @e[tag=rouco2,tag=!rouco] add rouco
scoreboard players add @e[tag=rouco1] int 1
execute as @e[tag=rouco1] store result entity @s Rotation[0] float 1 run scoreboard players get @s int
execute if score @e[tag=rouco1,limit=1] int < 359 int run function math:coords/round/cre1