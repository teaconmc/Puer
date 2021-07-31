scoreboard players set min int -2147483648
scoreboard players set max int 2147483647
function math:random
execute at @s positioned ~ ~1.62 ~ run summon armor_stand ^ ^ ^2 {Tags:["double_missile","tmp1"],Invulnerable:true,Invisible:true}
scoreboard players operation @e[tag=tmp1] id = random int
tag @e[distance=5..,type=!player,type=!armor_stand,limit=1,sort=nearest] add double_missile_target
scoreboard players operation @e[distance=5..,type=!player,type=!armor_stand,limit=1,sort=nearest] id = random int


execute at @s positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1.5 {Tags:["tmp"]}
execute as @e[tag=tmp1] run data modify entity @s Motion set from entity @e[tag=tmp,limit=1] Pos
scoreboard players set min int -3600000
scoreboard players set max int 3600000
function math:random
execute as @e[tag=tmp1] run scoreboard players operation @s angel = random int
function math:random
execute as @e[tag=tmp1] run scoreboard players operation @s angel1 = random int

scoreboard players set @e[tag=tmp1] amp 150

tag @e remove tmp1
kill @e[tag=tmp]