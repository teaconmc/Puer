#math:test41
scoreboard players remove test int 1
particle end_rod ~ ~ ~ 0 0 0 0 1 force @a
execute if score test int matches 1.. positioned ^0.1 ^ ^0.1 rotated ~1 ~ run function math:test41