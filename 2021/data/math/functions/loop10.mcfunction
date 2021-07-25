scoreboard players add stempl int 1
execute store result score input int run data get entity @s Item.tag.tmp[0]
data remove entity @s Item.tag.tmp[0]
function math:operation/bit0/plus
execute if score stempl int < stempc int run function math:loop10