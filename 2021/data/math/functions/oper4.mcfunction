scoreboard players set r oper 0

execute store result score temp int run data get entity @e[tag=oper,limit=1] Item.tag.oper[0][0]
scoreboard players set r1 oper 1
function math:1
execute store result score temp int run data get entity @e[tag=oper,limit=1] Item.tag.oper[0][1]
scoreboard players set r2 oper 1
function math:2
scoreboard players operation r1 oper *= r2 oper
scoreboard players operation r oper += r1 oper

execute store result score temp int run data get entity @e[tag=oper,limit=1] Item.tag.oper[1][0]
scoreboard players set r1 oper 1
function math:1
execute store result score temp int run data get entity @e[tag=oper,limit=1] Item.tag.oper[1][1]
scoreboard players set r2 oper 1
function math:2
scoreboard players operation r1 oper *= r2 oper
scoreboard players operation r oper += r1 oper

execute store result score temp int run data get entity @e[tag=oper,limit=1] Item.tag.oper[2][0]
scoreboard players set r1 oper 1
function math:1
execute store result score temp int run data get entity @e[tag=oper,limit=1] Item.tag.oper[2][1]
scoreboard players set r2 oper 1
function math:2
scoreboard players operation r1 oper *= r2 oper
scoreboard players operation r oper += r1 oper

execute store result score temp int run data get entity @e[tag=oper,limit=1] Item.tag.oper[3][0]
scoreboard players set r1 oper 1
function math:1
execute store result score temp int run data get entity @e[tag=oper,limit=1] Item.tag.oper[3][1]
scoreboard players set r2 oper 1
function math:2
scoreboard players operation r1 oper *= r2 oper
scoreboard players operation r oper += r1 oper

kill @e[tag=oper]