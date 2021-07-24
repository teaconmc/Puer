tag @s add jumped
execute at @s run summon boat ~ ~-0.6 ~ {NoGravity:true,Tags:["jump_boat","tmp"]}
scoreboard players operation @e[tag=tmp,limit=1] uid = @s uid
tag @e remove tmp