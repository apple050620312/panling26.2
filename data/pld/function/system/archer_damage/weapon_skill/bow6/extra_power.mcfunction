#输入 @s archer_damage_should *（1+0.05*lvl）

scoreboard players set #temp temp 5
scoreboard players operation #temp temp *= @s weapon_skill_bow6_lvl
scoreboard players add #temp temp 100
scoreboard players operation @s archer_damage_should *= #temp temp
scoreboard players set #temp temp 100
scoreboard players operation @s archer_damage_should /= #temp temp