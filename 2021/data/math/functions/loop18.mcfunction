scoreboard players add rx int 3
tellraw @a [{"text":"execute rotated "},{"score":{"name":"rx","objective":"int"}},{"text":".0 "},{"score":{"name":"ry","objective":"int"}},{"text":".0 "},{"text":"positioned ^ ^ ^"},{"score":{"name":"r","objective":"int"}},{"text":".0 run function math:sphere/out"}]
execute unless score rx int matches 360.. run function math:loop18