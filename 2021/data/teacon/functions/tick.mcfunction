execute as @a unless score @s teaconjointick >= #teaconjointick teaconjointick run function teacon:hello
scoreboard players operation @a teaconjointick = #teaconjointick teaconjointick
scoreboard players add #teaconjointick teaconjointick 1
scoreboard players add @a teaconjointick 1

kill @e[type=minecraft:minecart,scores={teaconcarttick=200..}]
scoreboard players add @e[type=minecraft:minecart,nbt={CustomName:'{"italic":false,"text":"交通强国, 铁路先行"}'}] teaconcarttick 1
execute as @e[type=minecraft:minecart,scores={teaconcarttick=0..}] at @s positioned ~ ~-0.35 ~ if entity @a[distance=..0.25] run scoreboard players set @s teaconcarttick 0
