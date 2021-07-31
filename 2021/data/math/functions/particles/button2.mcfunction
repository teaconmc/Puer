scoreboard players operation temp1 int = @s result
execute at @p positioned ~ ~1.26 ~ run function math:if-raycast
scoreboard players operation @s result > temp1 int