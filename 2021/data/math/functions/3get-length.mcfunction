summon area_effect_cloud ~ ~ ~ {Tags:["stmp"]}
execute store result score stempx int run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score stempy int run data get entity @e[tag=stmp,limit=1] Pos[1] 10000
execute store result score stempz int run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
execute store result score stempx0 int run data get entity @s Pos[0] 10000
execute store result score stempy0 int run data get entity @s Pos[1] 10000
execute store result score stempz0 int run data get entity @s Pos[2] 10000
scoreboard players operation stempx int -= stempx0 int
scoreboard players operation stempy int -= stempy0 int
scoreboard players operation stempz int -= stempz0 int
scoreboard players operation stempx int *= 1000 int
scoreboard players operation stempy int *= 1000 int
scoreboard players operation stempz int *= 1000 int
execute at @s facing entity @e[tag=stmp,limit=1] feet positioned 0.0 0.0 0.0 run tp @e[tag=stmp,limit=1] ^ ^ ^1.0
execute store result score stempi int run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score stempj int run data get entity @e[tag=stmp,limit=1] Pos[1] 10000
execute store result score stempk int run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
kill @e[tag=stmp]
execute if score stempx int matches ..-1 run scoreboard players operation stempx int *= -1 int
execute if score stempy int matches ..-1 run scoreboard players operation stempy int *= -1 int
execute if score stempz int matches ..-1 run scoreboard players operation stempz int *= -1 int
execute if score stempi int matches ..-1 run scoreboard players operation stempi int *= -1 int
execute if score stempj int matches ..-1 run scoreboard players operation stempj int *= -1 int
execute if score stempk int matches ..-1 run scoreboard players operation stempk int *= -1 int
scoreboard players operation stempx int += stempy int
scoreboard players operation stempx int += stempz int
scoreboard players operation stempi int += stempj int
scoreboard players operation stempi int += stempk int
execute store result score result int run scoreboard players operation stempx int /= stempi int