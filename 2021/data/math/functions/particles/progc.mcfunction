scoreboard players set temp1 mpar_temp 0
scoreboard players add @s mpar_tick1 1
function math:loop31
execute store result score temp1 mpar_temp run scoreboard players operation temp mpar_temp = @s mpar_tick1
scoreboard players operation temp mpar_temp *= 100 mpar_const
scoreboard players operation temp mpar_temp /= @s mpar_l
scoreboard players operation temp1 mpar_temp %= 40 mpar_const
setblock 0 255 0 air
execute if score temp1 mpar_temp matches 0..9 run setblock 0 255 0 oak_sign{Text1:'[{"text":"loading "},{"score":{"name":"temp","objective":"mpar_temp"}},{"text":"%"}]'}
execute if score temp1 mpar_temp matches 10..19 run setblock 0 255 0 oak_sign{Text1:'[{"text":"loading. "},{"score":{"name":"temp","objective":"mpar_temp"}},{"text":"%"}]'}
execute if score temp1 mpar_temp matches 20..29 run setblock 0 255 0 oak_sign{Text1:'[{"text":"loading.. "},{"score":{"name":"temp","objective":"mpar_temp"}},{"text":"%"}]'}
execute if score temp1 mpar_temp matches 30..39 run setblock 0 255 0 oak_sign{Text1:'[{"text":"loading... "},{"score":{"name":"temp","objective":"mpar_temp"}},{"text":"%"}]'}
execute at @s run data modify entity @e[tag=progc1,limit=1,sort=nearest] CustomName set value '{"text":""}'
execute at @s run data modify entity @e[tag=progc1,limit=1,sort=nearest] CustomName set from block 0 255 0 Text1

execute if score temp mpar_temp matches 100.. run kill @s