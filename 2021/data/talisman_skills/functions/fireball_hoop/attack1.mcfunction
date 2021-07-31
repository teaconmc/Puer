tag @s add tmp2
summon area_effect_cloud ~ ~ ~ {Tags:["tmp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["tmp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["tmp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["tmp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["tmp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["tmp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["tmp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["tmp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["tmp"]}
summon area_effect_cloud ~ ~ ~ {Tags:["tmp"]}
execute as @e[tag=tmp] run function talisman_skills:fireball_hoop/fireball
kill @e[tag=tmp]
tag @s remove tmp2
scoreboard players reset @s mpar_tick