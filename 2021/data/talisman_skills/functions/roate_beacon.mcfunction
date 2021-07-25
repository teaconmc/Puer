#螺旋信标
summon area_effect_cloud ~ ~1.1 ~ {Tags:["talisman_skills","rotate_beacon"],Duration:2147483647}
#放置信标
summon area_effect_cloud ~5 ~-1 ~5 {Tags:["tmp","talisman_skills","rotate_beacon_base"],Duration:2147483647}
summon area_effect_cloud ~5 ~-1 ~-5 {Tags:["tmp","talisman_skills","rotate_beacon_base"],Duration:2147483647}
summon area_effect_cloud ~-5 ~-1 ~5 {Tags:["tmp","talisman_skills","rotate_beacon_base"],Duration:2147483647}
summon area_effect_cloud ~-5 ~-1 ~-5 {Tags:["tmp","talisman_skills","rotate_beacon_base"],Duration:2147483647}
summon area_effect_cloud ~5 ~ ~2 {Tags:["tmp","talisman_skills","rotate_beacon_base"],Duration:2147483647}
summon area_effect_cloud ~5 ~ ~-2 {Tags:["tmp","talisman_skills","rotate_beacon_base"],Duration:2147483647}
summon area_effect_cloud ~-5 ~ ~2 {Tags:["tmp","talisman_skills","rotate_beacon_base"],Duration:2147483647}
summon area_effect_cloud ~-5 ~ ~-2 {Tags:["tmp","talisman_skills","rotate_beacon_base"],Duration:2147483647}
summon area_effect_cloud ~2 ~ ~5 {Tags:["tmp","talisman_skills","rotate_beacon_base"],Duration:2147483647}
summon area_effect_cloud ~2 ~ ~-5 {Tags:["tmp","talisman_skills","rotate_beacon_base"],Duration:2147483647}
summon area_effect_cloud ~-2 ~ ~5 {Tags:["tmp","talisman_skills","rotate_beacon_base"],Duration:2147483647}
summon area_effect_cloud ~-2 ~ ~-5 {Tags:["tmp","talisman_skills","rotate_beacon_base"],Duration:2147483647}
summon area_effect_cloud ~2 ~1 ~2 {Tags:["tmp","talisman_skills","rotate_beacon_base"],Duration:2147483647}
summon area_effect_cloud ~2 ~1 ~-2 {Tags:["tmp","talisman_skills","rotate_beacon_base"],Duration:2147483647}
summon area_effect_cloud ~-2 ~1 ~2 {Tags:["tmp","talisman_skills","rotate_beacon_base"],Duration:2147483647}
summon area_effect_cloud ~-2 ~1 ~-2 {Tags:["tmp","talisman_skills","rotate_beacon_base"],Duration:2147483647}
execute as @e[tag=tmp] at @s run setblock ~ ~ ~ beacon
execute as @e[tag=tmp] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 iron_block
tag @e remove tmp
#放置灯座
setblock ~ ~ ~ redstone_lamp
setblock ~1 ~ ~ redstone_block
setblock ~-1 ~ ~ redstone_block
setblock ~ ~ ~1 redstone_block
setblock ~ ~ ~-1 redstone_block
setblock ~2 ~ ~ quartz_stairs[facing=west,half=bottom,shape=straight,waterlogged=false]
setblock ~-2 ~ ~ quartz_stairs[facing=east,half=bottom,shape=straight,waterlogged=false]
setblock ~ ~ ~2 quartz_stairs[facing=north,half=bottom,shape=straight,waterlogged=false]
setblock ~ ~ ~-2 quartz_stairs[facing=south,half=bottom,shape=straight,waterlogged=false]
setblock ~ ~1 ~ blue_stained_glass
setblock ~ ~1 ~1 quartz_slab[type=bottom,waterlogged=false]
setblock ~ ~1 ~-1 quartz_slab[type=bottom,waterlogged=false]
setblock ~1 ~1 ~ quartz_slab[type=bottom,waterlogged=false]
setblock ~-1 ~1 ~ quartz_slab[type=bottom,waterlogged=false]