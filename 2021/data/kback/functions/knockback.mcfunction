summon area_effect_cloud ~ ~ ~ {Tags:["knockback"]}
tp @e[type=area_effect_cloud,tag=knockback] ~ ~ ~ facing entity @s
execute as @e[type=area_effect_cloud,tag=knockback] positioned 0.0 0.0 0.0 rotated as @s rotated ~ 0.0 run function knockback/1
function knockback/2