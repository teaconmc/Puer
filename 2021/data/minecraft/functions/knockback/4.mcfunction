scoreboard players operation knockback temp = attack_knockback temp
scoreboard players operation knockback temp /= 2 const
scoreboard players add knockback temp 20
scoreboard players operation knockback temp *= knockback_resistance temp
function knockback/6