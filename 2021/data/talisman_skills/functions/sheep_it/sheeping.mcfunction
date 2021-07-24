#计时
scoreboard players add @s int 1
scoreboard players add @s int1 1
execute if score @s int1 matches 5.. at @s run playsound minecraft:entity.witch.drink player @a
execute if score @s int1 matches 5.. run scoreboard players set @s int1 0
#静止
data modify entity @s NoAI set value 1b
data modify entity @s Silent set value 1b
#变羊
execute if score @s int matches 200.. at @s run function talisman_skills:sheep_it/sheep