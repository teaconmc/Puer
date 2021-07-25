summon area_effect_cloud 1.0 0.0 0.0 {Tags:["tmp","A"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp","B"]}
summon area_effect_cloud 1.0 0.0 1.0 {Tags:["tmp","C"]}
execute as @e[tag=A,limit=1] at @e[tag=B,limit=1] facing entity @e[tag=C,limit=1] feet run function math:get-angel
kill @e[tag=tmp]