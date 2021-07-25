#增益
effect give @a[distance=..50] minecraft:resistance 1 5 true
#计时
scoreboard players add @s int1 1
#声音
execute if score @s int1 matches 15 run playsound minecraft:entity.ender_dragon.flap player @a
#召唤
execute if score @s int1 matches 20.. run function talisman_skills:rotate_beacon/particle
#清除
scoreboard players set result int 0
execute unless block ~ ~-1 ~ air run scoreboard players set result int 1
execute unless block ~1 ~-1 ~ air run scoreboard players set result int 1
execute unless block ~-1 ~-1 ~ air run scoreboard players set result int 1
execute unless block ~ ~-1 ~1 air run scoreboard players set result int 1
execute unless block ~ ~-1 ~-1 air run scoreboard players set result int 1
execute unless block ~1 ~-1 ~1 air run scoreboard players set result int 1
execute unless block ~1 ~-1 ~-1 air run scoreboard players set result int 1
execute unless block ~-1 ~-1 ~1 air run scoreboard players set result int 1
execute unless block ~-1 ~-1 ~-1 air run scoreboard players set result int 1

execute if score result int matches 0 run kill @s