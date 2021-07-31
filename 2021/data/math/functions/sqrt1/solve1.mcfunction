execute as @e[tag=sqrt0] store result score sqtemp3 int run data get entity @s Pos[1] 1000
execute as @e[tag=sqrt1] store result score sqtemp4 int run data get entity @s Pos[1] 1000
execute if score sqtemp4 int >= sqtemp3 int as @e[tag=sqrt1] store result score sqr int run data get entity @s Pos[0] 100
execute if score sqtemp4 int >= sqtemp3 int run kill @e[tag=sqrt]
execute as @e[tag=sqrt] at @s run tp @s ~0.1 ~ ~
scoreboard players add @e[tag=sqrt1] CD 1
execute as @e[tag=sqrt1] run scoreboard players operation @s x = @s CD
execute as @e[tag=sqrt1] run scoreboard players operation @s x *= @s x
execute as @e[tag=sqrt1] store result entity @s Pos[1] double 0.01 run scoreboard players get @s x
execute if entity @e[tag=sqrt1] run function math:sqrt/solve1