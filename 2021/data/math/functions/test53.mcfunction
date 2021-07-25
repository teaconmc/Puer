scoreboard players set min int -2147483648
scoreboard players set max int 2147483647
function math:uuid-random
tellraw @a {"score":{"name":"random","objective":"int"}}