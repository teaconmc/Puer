execute store result score knockback_resistance_temp temp run attribute @s generic.knockback_resistance get 100
scoreboard players set knockback_resistance temp 100
scoreboard players operation knockback_resistance temp -= knockback_resistance_temp temp 
execute if score attack_knockback temp matches 0 run function knockback/3
execute unless score attack_knockback temp matches 0 run function knockback/4
scoreboard players operation Motion1 temp < 4000 const
scoreboard players operation Motion1 temp > 0 const
execute if entity @s[nbt={OnGround:1b}] store result entity @s Motion[1] double 0.0001 run scoreboard players get Motion1 temp
scoreboard players operation Motion0 temp *= knockback temp
execute store result score Motion0_temp temp run data get entity @s Motion[0] 100000000
scoreboard players operation Motion0 temp += Motion0_temp temp
execute store result entity @s Motion[0] double 0.00000001 run scoreboard players get Motion0 temp
scoreboard players operation Motion2 temp *= knockback temp
execute store result score Motion0_temp temp run data get entity @s Motion[2] 100000000
scoreboard players operation Motion2 temp += Motion0_temp temp
execute store result entity @s Motion[2] double 0.00000001 run scoreboard players get Motion2 temp