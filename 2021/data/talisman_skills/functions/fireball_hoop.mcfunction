#识别投掷者
tag @s add tmp
execute as @a run function talisman_skills:fireball_hoop/identity
tag @s remove tmp
#施法
execute as @a[tag=tmp1] at @s run function talisman_skills:fireball_hoop/spell
#移除标签
tag @a remove tmp1