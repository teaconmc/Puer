scoreboard players operation ly int = lx int
scoreboard players operation lz int = lx int
scoreboard players operation ly int *= k1 int
scoreboard players operation lz int *= k2 int
scoreboard players add lx int 1
scoreboard players operation lx int *= v int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["cank","printer"]}
scoreboard players operation temp int = lx int
execute store result entity @e[tag=printer,limit=1] Pos[0] double 0.1 run scoreboard players operation temp int += x1 int
scoreboard players operation temp int = ly int
scoreboard players operation temp1 int = y1 int
scoreboard players operation temp1 int *= 10000 int
scoreboard players operation temp int += temp1 int
execute store result entity @e[tag=printer,limit=1] Pos[1] double 0.00001 run scoreboard players get temp int
scoreboard players operation temp int = lz int
scoreboard players operation temp1 int = z1 int
scoreboard players operation temp1 int *= 10000 int
scoreboard players operation temp int += temp1 int
execute store result entity @e[tag=printer,limit=1] Pos[2] double 0.00001 run scoreboard players get temp int
execute if score lx int >= x2 int run scoreboard players set lx int 0