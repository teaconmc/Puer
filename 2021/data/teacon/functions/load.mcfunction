scoreboard objectives add teaconjointick dummy

scoreboard objectives add teaconcarttick dummy

bossbar add teacon:bossbar [{"color": "#55FFFF", "text": "请按下 "}, {"color": "#55AAFF", "text": "["}, {"color": "#55AAFF", "keybind": "sign_up.keybinding.open_map"}, {"color": "#55AAFF", "text": "]"}, {"color": "#55FFFF", "text": " 键打开展示服务器导引图"}]
bossbar set teacon:bossbar style progress
bossbar set teacon:bossbar color purple
bossbar set teacon:bossbar value 100
bossbar set teacon:bossbar max 100
