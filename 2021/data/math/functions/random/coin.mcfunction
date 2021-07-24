summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"],Age:0}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"],Age:1}
execute store result score result int run data get entity @e[tag=stmp,limit=1,sort=random] Age
execute if score result int matches 0 run tellraw @s {"text":"你投掷了一枚硬币，反面朝上"}
execute if score result int matches 1 run tellraw @s {"text":"你投掷了一枚硬币，正面朝上"}
kill @e[tag=stmp]