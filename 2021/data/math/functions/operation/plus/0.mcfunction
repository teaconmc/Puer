function math:operation/compare
execute if score result int matches -1 run function math:operation/plus/0-0
execute if score result int matches 0 run function math:operation/plus/0-1
execute if score result int matches 1 run function math:operation/plus/0-2

