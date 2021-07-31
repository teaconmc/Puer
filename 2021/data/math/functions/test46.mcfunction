execute as @a unless score @s uid matches 1.. store result score @s uid run scoreboard players add uid int 1
execute as @a[scores={jump=1..}] run function math:test47
execute as @a[tag=jumped] run function math:test50