#转子初始数据
scoreboard players set @s mpar_alpha 0
scoreboard players set @s mpar_omega 3000
scoreboard players set @s mpar_omega1 10000
execute unless entity @s[tag=xy] unless entity @s[tag=xz] unless entity @s[tag=yz] run tag @s add xz