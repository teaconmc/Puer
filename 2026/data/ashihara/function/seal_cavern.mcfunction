# 封印洞穴触发：需持有阶段4封印探索任务 tag；已完成则静默
execute unless entity @s[tag=in_expl_seal] run advancement revoke @s only ashihara:seal_cavern
execute unless entity @s[tag=in_expl_seal] run return 0
execute if entity @s[tag=jinja_seal_cavern_done] run advancement revoke @s only ashihara:seal_cavern
execute if entity @s[tag=jinja_seal_cavern_done] run return 0
execute if predicate inkraft:in_any_story run advancement revoke @s only ashihara:seal_cavern
execute if predicate inkraft:in_any_story run return 0
advancement revoke @s only ashihara:seal_cavern
inkraft start ashihara:seal_cavern
