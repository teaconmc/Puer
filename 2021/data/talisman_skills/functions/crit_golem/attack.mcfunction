#计数
scoreboard players add @s int2 1
#伤害
execute as @e[tag=tmp] store result score temp int run data get entity @s Health 10
scoreboard players remove temp int 50
execute if score @s int2 matches ..49 if score temp int matches ..0 run scoreboard players set temp int 1
execute as @e[tag=tmp] store result entity @s Health float 0.1 run scoreboard players get temp int
#效果
execute as @e[tag=tmp] at @s anchored eyes run particle minecraft:crit ^ ^ ^ 0.2 0.2 0.2 0.2 20 force
execute as @e[tag=tmp] at @s run playsound minecraft:entity.player.attack.crit player @a
#击退
execute at @s as @e[tag=tmp] run function kback:knockback