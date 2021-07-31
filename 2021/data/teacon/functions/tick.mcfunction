execute as @a unless score @s teaconjointick >= #teaconjointick teaconjointick run function teacon:hello
scoreboard players operation @a teaconjointick = #teaconjointick teaconjointick
scoreboard players add #teaconjointick teaconjointick 1
scoreboard players add @a teaconjointick 1
