execute as @s[predicate=heac:hand/health_code] at @s run function heac:tools/health_code
execute as @s[predicate=teacon:hand/one_pass] at @s run function teacon:one_pass
execute as @s[predicate=heac:hand/syringe,tag=!heac_vac] at @s run function heac:tools/syringe
execute as @s[predicate=heac:hand/syringe,tag=heac_vac] at @s run tellraw @s {"text": "你已经注射过疫苗了，请勿重复注射"}
scoreboard players reset @s heacUseCSt
