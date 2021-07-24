#绵羊术
execute as @e[tag=sheep_it,type=minecraft:area_effect_cloud] at @s run function talisman_skills:sheep_it/main
execute as @e[tag=sheep_it_mob] run function talisman_skills:sheep_it/sheeping
execute as @e[tag=sheep_it_sheep] run function talisman_skills:sheep_it/sheeped

#暴击傀儡
execute as @e[tag=crit_golem,type=minecraft:armor_stand] at @s run function talisman_skills:crit_golem/main

#冰封术
execute as @e[tag=ice_frozen_intr,nbt={Age:198}] at @s run function talisman_skills:ice_frozen/ice
execute as @e[tag=ice_frozen] at @s as @e[tag=mpar_end_rod,distance=..50] at @s run function talisman_skills:ice_frozen/main

#火焰祭坛
execute as @e[tag=fire_altar] at @s as @e[distance=..20,tag=!fire_altar_burn,type=#talisman_skills:withermob] run function talisman_skills:fire_altar/burn
execute as @e[tag=fire_altar_burn,nbt={Fire:400s}] at @s run function talisman_skills:fire_altar/drop

#螺旋信标
execute as @e[tag=rotate_beacon_base] at @s run function talisman_skills:rotate_beacon/base
execute as @e[tag=rotate_beacon] at @s run function talisman_skills:rotate_beacon/main
execute as @e[tag=rotate_beacon_rotate] run function talisman_skills:rotate_beacon/rotate

#天谴之门
execute as @e[tag=mhoop] at @s run function talisman_skills:fireball_hoop/main