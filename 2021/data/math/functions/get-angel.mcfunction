summon area_effect_cloud ~ ~ ~ {Tags:["tmp-a"]}
tp @e[tag=tmp-a] ~ ~ ~ ~ ~
execute store result score α int run data get entity @e[tag=tmp-a,limit=1] Rotation[0] 10000
execute if score α int matches ..-1 run scoreboard players add α int 3600000
execute facing entity @s feet run tp @e[tag=tmp-a,limit=1] ~ ~ ~ ~ ~
execute store result score tmp-β int run data get entity @e[tag=tmp-a,limit=1] Rotation[0] 10000
execute if score tmp-β int matches ..-1 run scoreboard players add tmp-β int 3600000
execute store result score result int run scoreboard players operation α int -= tmp-β int
kill @e[tag=tmp-a]