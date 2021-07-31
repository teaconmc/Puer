#计时
#scoreboard players add @s int 1
#execute if score @s int matches 20.. run function talisman_skills:rotate_beacon/color
#检测
execute unless block ~ ~ ~ beacon run kill @s