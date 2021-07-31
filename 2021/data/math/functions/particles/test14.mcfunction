execute as @e[tag=test] at @s run tp @s ~ ~ ~ ~1.0 ~
execute store result score temp int if entity @e[tag=mpar_particle]
execute if score temp int < count int at @e[tag=test] run function math:particles/test15
scoreboard players operation @e[tag=mpar_particle] mpar_omega = mpar_omega int
scoreboard players operation @e[tag=mpar_particle] mpar_omegan0 = mpar_omegan0 int
scoreboard players operation @e[tag=mpar_particle] mpar_omegan1 = mpar_omegan1 int
scoreboard players operation @e[tag=mpar_particle] mpar_omegan2 = mpar_omegan2 int
execute as @a[scores={mpar_rc=1..}] run function math:particles/test16
scoreboard players operation x int = mpar_omegan0 int
scoreboard players operation y int = mpar_omegan1 int
scoreboard players operation z int = mpar_omegan2 int
scoreboard players operation x int *= r int
scoreboard players operation y int *= r int
scoreboard players operation z int *= r int
scoreboard players operation x int /= 10 int
scoreboard players operation y int /= 10 int
scoreboard players operation z int /= 10 int
execute at @e[tag=test,limit=1] run function math:vector