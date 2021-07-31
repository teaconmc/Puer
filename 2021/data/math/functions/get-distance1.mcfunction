summon area_effect_cloud ~ ~ ~ {Tags:["stmp"]}
execute store result score stemp1 int run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score stemp2 int run data get entity @e[tag=stmp,limit=1] Pos[1] 10000
execute store result score stemp3 int run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
execute store result score stemp4 int run data get entity @s Pos[0] 10000
execute store result score stemp5 int run data get entity @s Pos[1] 10000
execute store result score stemp6 int run data get entity @s Pos[2] 10000
scoreboard players operation stemp1 int -= stemp4 int
scoreboard players operation stemp2 int -= stemp5 int
scoreboard players operation stemp3 int -= stemp6 int
execute at @s facing entity @e[tag=stmp,limit=1] feet positioned 0.0 0.0 0.0 run tp @e[tag=stmp,limit=1] ^ ^ ^1.0
execute store result score stemp4 int run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score stemp5 int run data get entity @e[tag=stmp,limit=1] Pos[1] 10000
execute store result score stemp6 int run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
execute if score stemp1 int matches ..-1 run scoreboard players operation stemp1 int *= -1 int
execute if score stemp2 int matches ..-1 run scoreboard players operation stemp2 int *= -1 int
execute if score stemp3 int matches ..-1 run scoreboard players operation stemp3 int *= -1 int
execute if score stemp4 int matches ..-1 run scoreboard players operation stemp4 int *= -1 int
execute if score stemp5 int matches ..-1 run scoreboard players operation stemp5 int *= -1 int
execute if score stemp6 int matches ..-1 run scoreboard players operation stemp6 int *= -1 int
scoreboard players operation stemp1 int += stemp2 int
execute store result score stemp7 int run scoreboard players operation stemp1 int += stemp3 int
scoreboard players operation stemp4 int += stemp5 int
execute store result score stemp8 int run scoreboard players operation stemp4 int += stemp6 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp7 int %= 10000 int
scoreboard players operation stemp1 int *= 100000000 int
scoreboard players operation stemp7 int *= 10000 int
scoreboard players operation stemp1 int /= stemp4 int
scoreboard players operation stemp7 int /= stemp4 int
execute store result score distance int run scoreboard players operation stemp1 int += stemp7 int
kill @e[tag=stmp]