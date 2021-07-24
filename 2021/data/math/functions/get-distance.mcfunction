summon area_effect_cloud ~ ~ ~ {Tags:["stmp1"]}
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["stmp"]}
execute store result score disstemp1 int run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score disstemp2 int run data get entity @e[tag=stmp,limit=1] Pos[1] 10000
execute store result score disstemp3 int run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
execute store result score disstemp4 int run data get entity @e[tag=stmp1,limit=1] Pos[0] 10000
execute store result score disstemp5 int run data get entity @e[tag=stmp1,limit=1] Pos[1] 10000
execute store result score disstemp6 int run data get entity @e[tag=stmp1,limit=1] Pos[2] 10000
scoreboard players operation disstemp4 int -= disstemp1 int
scoreboard players operation disstemp5 int -= disstemp2 int
scoreboard players operation disstemp6 int -= disstemp3 int
execute if score disstemp4 int matches ..-1 run scoreboard players operation disstemp4 int *= -1 int
execute if score disstemp5 int matches ..-1 run scoreboard players operation disstemp5 int *= -1 int
execute if score disstemp6 int matches ..-1 run scoreboard players operation disstemp6 int *= -1 int
execute as @e[tag=stmp] positioned as @s facing entity @e[tag=stmp1,limit=1] feet positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score disstemp1 int run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score disstemp2 int run data get entity @e[tag=stmp,limit=1] Pos[1] 10000
execute store result score disstemp3 int run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
kill @e[tag=stmp]
kill @e[tag=stmp1]
execute if score disstemp1 int matches ..-1 run scoreboard players operation disstemp1 int *= -1 int
execute if score disstemp2 int matches ..-1 run scoreboard players operation disstemp2 int *= -1 int
execute if score disstemp3 int matches ..-1 run scoreboard players operation disstemp3 int *= -1 int
scoreboard players set result int 0
scoreboard players set disstemp int 0
execute if score disstemp1 int >= disstemp2 int if score disstemp1 int >= disstemp3 int run scoreboard players set disstemp int 1
execute if score disstemp2 int >= disstemp1 int if score disstemp2 int >= disstemp3 int run scoreboard players set disstemp int 2
execute if score disstemp3 int >= disstemp1 int if score disstemp3 int >= disstemp2 int run scoreboard players set disstemp int 3
execute if score disstemp int matches 1 run function math:distance1
execute if score disstemp int matches 2 run function math:distance2
execute if score disstemp int matches 3 run function math:distance3