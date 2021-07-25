#识别投掷者
data modify storage talisman_skills:identity UUID set from entity @e[tag=tmp,limit=1] owner
execute store result score result int run data modify storage talisman_skills:identity UUID set from entity @s UUID
execute if score result int matches 0 run tag @s add tmp1