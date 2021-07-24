summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"],Age:1}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"],Age:2}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"],Age:3}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"],Age:4}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"],Age:5}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"],Age:6}
execute store result score result int run data get entity @e[tag=stmp,limit=1,sort=random] Age
tellraw @s [{"text":"你投掷了一枚骰子，点数为"},{"score":{"name":"result","objective":"int"}}]
kill @e[tag=stmp]