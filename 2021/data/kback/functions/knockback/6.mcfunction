scoreboard players operation Motion1 temp = knockback temp
execute if score attack_knockback temp matches ..-1 if score Motion1 temp matches ..-1 run scoreboard players operation Motion1 temp *= -1 const
scoreboard players remove Motion1 temp 196