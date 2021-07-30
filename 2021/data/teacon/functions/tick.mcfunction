execute as @a unless score @s teaconjointick >= #teaconjointick teaconjointick run title @s actionbar [{"color":"gold","text":"按下 "},{"color":"aqua","text":"["}, {"color":"aqua","keybind":"sign_up.keybinding.open_map"},{"color":"aqua","text":"]"},{"color":"gold","text":" 键打开展示服务器导引图"}]
scoreboard players operation @a teaconjointick = #teaconjointick teaconjointick
scoreboard players add #teaconjointick teaconjointick 1
scoreboard players add @a teaconjointick 1
