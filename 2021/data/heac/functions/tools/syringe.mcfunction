tag @s add heac_vac
clear @s minecraft:carrot_on_a_stick{id:"heac:syringe"} 1
loot give @s loot heac:health_code
particle minecraft:totem_of_undying ~ ~ ~ 1 1 1 2 32 normal @a
tellraw @p [{"text":"【全服公告】","color":"gold","bold":true},{"text":"玩家 ","color":"black","bold":true},{"selector":"@s","color":"gold","bold":true},{"text":" 已注射新冠疫苗","color":"black","bold":true}]