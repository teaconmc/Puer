#召唤绵羊术
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["talisman_skills","sheep_it","tmp"],Duration:200}
tp @e[tag=tmp,limit=1] ~ ~ ~
tag @e remove tmp