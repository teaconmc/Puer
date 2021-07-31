execute if score tick_mode int matches 1 run schedule function math:tick 1t

#画球
execute if entity @e[tag=ssphere] run function math:ssphere

#math_marker
execute store result score mathtemp int if entity @e[tag=math_marker]
execute if score mathtemp int matches 2.. run kill @e[tag=math_marker,limit=1]
execute if score mathtemp int matches 0 run summon area_effect_cloud 0.0 0.0 0.0 {Tags:["math_marker"],Duration:2147483647}